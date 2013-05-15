module Roglew
  class RenderHandle
    @registered_extensions = {}

    class << self
      def current
        stack.empty? ? nil : peek.first
      end

      private
      def finalize(*args)
        proc do
          puts 'releasing a render context'
          GL.platform_module.delete_context(*args)
        end
      end

      def peek
        stack.peek
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
        ctx = i ? stack[i].last : RenderContext.new(self)
        make_current
      end
      self.class.send(:push, self, ctx)

      return ctx unless block_given?
      yield ctx
      ctx.finished
      self
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
      ext = ext.to_sym
      @loaded_extensions << ext

      unless Object.const_defined?(ext)
        reg = self.class.instance_variable_get(:@registered_extensions)
        filename = reg[ext] || File.expand_path("extensions/#{ext}.rb", __dir__)
        require filename if File.exists?(filename)
      end

      return unless Object.const_defined?(ext)
      mod = Object.const_get(ext)
      return unless mod.const_defined?(:RenderContext)
      mod = mod::RenderContext
      return unless mod

      singleton_class.send(:include, mod)

      return unless mod.respond_to? :functions
      bind do |rc|
        mod.functions.each do |name, parameters, ret_type|
          function = rc.get_function(name, parameters, ret_type)
          define_singleton_method(name) { |*a| function.call(*a) } if function
        end
      end
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
    def extension_list_core
      Dir["#{File.expand_path('../extensions', __FILE__)}/GL_VERSION_*.rb"].
          map! { |f| File.basename(f, '.rb') }.
          select! { |f| (f.gsub('GL_VERSION_', '').split('_', 2).map!(&:to_i) <=> @version) <= 0 }
    end

    def extension_list_gl
      (@version[0] < 3 ?
          glGetString(GL::EXTENSIONS).split :
          get_integers(GL::NUM_EXTENSIONS).times.map { |i| glGetStringi(GL::EXTENSIONS, i) }).map!(&:to_sym)
    end
  end
end