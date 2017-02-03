module Roglew
  class RenderHandle
    @registered_extensions = {}

    class << self
      def current
        stack.empty? ? nil : peek.first
      end

      private
      def def_function(name, func)
        define_method(name) { |*args| func.(*args) }
      end

      def finalize(*args)
        proc do
          #puts 'releasing a render context'
          GL.platform_module.delete_context(*args)
        end
      end

      def peek
        stack.last
      end

      def push(rh, rc)
        stack.push([rh, rc])
      end

      def stack
        @stack ||= []
      end

      def register_extensions(extensions)
        extensions = Hash[extensions.map { |k, v| [k.to_sym, v] }]
        @registered_extensions.merge!(extensions)
        nil
      end

      def unregister_extensions(*extensions)
        extensions.map! { |e| e.to_sym }.each { |e| @registered_extensions.delete(e) }
        nil
      end
    end

    # platform specific implementations:
    #   #initialize
    #   #get_proc_address
    #   #make_current
    #   #remove_current
    #   #swap_buffers

    def attribs
      @attribs.dup
    end

    def bind
      if current?
        ctx = RenderContext.current
      else
        stack = self.class.send(:stack)
        i = stack.rindex { |rh, _| rh == self }
        ctx = i ? stack[i].last : create_context
        make_current
      end
      self.class.send(:push, self, ctx)

      return ctx unless block_given?
      result = yield ctx
      ctx.finished
      result
    end

    def extension_list(*types)
      list = types.flat_map { |type| send("extension_list_#{type}") }
      list.uniq!
      list
    end

    def current?
      self.class.current == self
    end

    def load_extension(ext)
      LOGGER.debug "load_extension: #{ext}"
      ext = ext.to_sym
      @loaded_extensions << ext

      unless Object.const_defined?(ext)
        reg = self.class.instance_variable_get(:@registered_extensions)
        filename = reg[ext] || File.expand_path("extensions/#{ext}.rb", __dir__)
        require filename if File.exists?(filename)
      end

      return unless Object.const_defined?(ext)
      mod = Object.const_get(ext)
      if mod.const_defined?(:RenderHandle)
        modrh = mod.const_get(:RenderHandle)
        singleton_class.send(:include, modrh)

        bind do |rc|
          modrh.functions.each do |options, list|
            list.each do |name, parameters, ret_type|
              function = if options.include?(:ffi)
                           if name =~ /^(glX|wgl)/
                             GL.platform_module.attach_function(name[3..-1], name, parameters, ret_type)
                           else
                             GL.attach_function(name[2..-1], name, parameters, ret_type)
                           end
                         else
                           rc.get_function(name, parameters, ret_type)
                         end
              define_singleton_method(name) { |*a| function.(*a) } if function
            end if !options.include?(:compatibility) || ((@version <=> [3, 0]) <= 0)
          end if modrh.respond_to?(:functions)
        end
      end

      nil
    end

    def loaded_extensions
      @loaded_extensions.dup
    end

    def supports?(extension)
      !!@loaded_extensions[extension]
    end

    def version
      @version.dup
    end

    private
    def create_context
      RenderContext.new(self)
    end

    def extension_list_core
      dirs = Dir["#{File.expand_path('../extensions', __FILE__)}/GL_VERSION_*.rb"]
      dirs.map! { |f| File.basename(f, '.rb') }
      dirs.select! { |f| (f.gsub('GL_VERSION_', '').split('_', 2).map!(&:to_i) <=> @version) <= 0 }
      dirs
    end

    def extension_list_gl
      if @version[0] < 3
        glGetString(GL::EXTENSIONS).split
      else
        RenderContext.current.num_extensions.times.map { |i| glGetStringi(GL::EXTENSIONS, i) }
      end.map!(&:to_sym)
    end
  end
end