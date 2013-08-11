module Roglew
  class ShaderProgram
    attr_reader :handle,
                :id,
                :shaders

    def initialize(handle)
      @handle = handle
      @id = handle.bind { handle.glCreateProgram() }
      @attribs, @uniforms = {}, {}

      ObjectSpace.define_finalizer(self, self.class.finalize(@id, @handle))
    end

    def self.finalize(id, handle)
      proc do
        puts "releasing program #{id}"
        handle.bind { handle.glDeleteProgram(id) }
      end
    end

    def attach(*shaders)
      @shaders = shaders unless shaders.length == 0
      @handle.bind { @shaders.each { |shader| @handle.glAttachShader(@id, shader.id) } }
      nil
    end

    def link_program
      @handle.bind { @handle.glLinkProgram(@id) }
      raise CompileError, info_log unless link_status
    end

    def link_status
      @handle.bind { |context| context.get_program(@id, GL::LINK_STATUS) }
    end

    def use_program
      @handle.bind do
        @handle.glUseProgram(@id)
        if block_given?
          yield
          @handle.glUseProgram(0)
        end
      end
    end

    def attrib_location(name)
      name = name.to_sym
      loc = @attribs[name]
      return loc if loc
      loc = @handle.bind { @handle.glGetAttribLocation(@id, name.to_s) }
      return nil if loc < 0
      @attribs[name] = loc
    end

    def attrib_locations(*names)
      @handle.bind { names.map { |name| attrib_location(name) } }
    end

    def uniform_location(name)
      name = name.to_sym
      loc = @uniforms[name]
      return loc if loc
      loc = @handle.bind { @handle.glGetUniformLocation(@id, name.to_s) }
      return nil if loc < 0
      @uniforms[name] = loc
    end

    def uniform_locations(*names)
      @handle.bind { names.map { |name| uniform_location(name) } }
    end

    alias_method :link, :link_program
    alias_method :use,  :use_program
  end
end