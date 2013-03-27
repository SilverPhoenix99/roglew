module Roglew
  class RenderContext
    include GLObject, Roglew::Contextual(nil)

    @registered_extensions = {}

    def self.finalize(*args)
      proc do
        puts 'releasing a render context'
        GL.platform_module.delete_context(*args)
      end
    end

    def self.register_extensions(extensions)
      extensions = Hash[extensions.map { |k, v| [k.to_sym, v] }]
      @registered_extensions.merge!(extensions)
      nil
    end

    def self.unregister_extensions(*extensions)
      extensions.map! { |e| e.to_sym }.each { |e| @registered_extensions.delete(e) }
      nil
    end

    def begin(mode)
      glBegin(mode)
      return unless block_given?
      yield
      glEnd
    end

    %w'points lines line_strip line_loop triangles triangle_strip triangle_fan quads quad_strip polygon'.each do |v|
      class_eval("def #{v}(&block) self.begin(GL::#{v.upcase}, &block) end")
    end

    def bind
      make_current
      if block_given?
        yield
        unbind
      end
      self
    end

    def clear(*flags)
      glClear(flags.reduce(&:|))
    end

    def create_texture2d(*args)
      Texture2d.new(self, *args)
    end

    def_object :Textures

    def disable(*caps)
      caps = Set[*caps] & @attribs
      caps.each do |cap|
        glDisable(cap)
        @attribs.delete(cap)
      end
      return unless block_given?
      yield
      enable(caps)
    end

    def enable(*caps)
      caps = Set[*caps] - @attribs
      caps.each { |cap| glEnable(cap) }
      @attribs.merge(caps)
      return unless block_given?
      yield
      disable(*caps)
    end

    def extension_list(*types)
      list = types.flat_map { |type| send("extension_list_#{type}") }
      list.uniq!
      list
    end

    def get_integers(pname, count = 1)
      p = FFI::MemoryPointer.new(:int, count)
      glGetIntegerv(pname, p)
      result = p.read_array_of_int(count)
      count == 1 ? result[0] : result
    end

    def get_errors
      errors = []
      while (error = glGetError) != 0
        errors << GL::ERROR[error] || error
      end
      errors
    end

    def get_function(function_name, parameters, return_type)
      ptr = get_proc_address(function_name.to_s)
      return nil if ptr.null?
      return_type = GL.find_type(return_type) || return_type
      parameters = parameters.map { |p| GL.find_type(p) || p }
      FFI::Function.new(return_type, parameters, ptr, convention: :stdcall)
    end

    def load_extension(ext)
      ext = ext.to_sym
      @loaded_extensions << ext

      unless Object.const_defined?(ext)
        reg = self.class.instance_variable_get(:@registered_extensions)
        filename = reg[ext] || File.expand_path("../extensions/#{ext}.rb", __FILE__)
        require filename if File.exists?(filename)
      end

      return unless Object.const_defined?(ext)
      mod = Object.const_get(ext)
      return unless mod.const_defined?(:RenderContext)
      mod = mod::RenderContext
      return unless mod

      singleton_class.send(:include, mod)

      return unless mod.respond_to? :functions
      mod.functions.each do |name, parameters, ret_type|
        function = get_function(name, parameters, ret_type)
        define_singleton_method(name) { |*a| function.call(*a) } if function
      end
    end

    def loaded_extensions; @loaded_extensions.dup end

    def supports?(extension); !!@loaded_extensions[extension] end

    def tex_parameter(target, pname, *params)
      params.flatten!
      type = params.all? { |param| param.is_a? Integer } ? 'int' : 'float'
      ptr = FFI::MemoryPointer.new(type.to_sym, params.length)
      ptr.send("write_array_of_#{type}", params)
      send("glTexParameter#{type[0]}v", target, pname, ptr)
    end

    def version; @version.dup end

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