module Roglew
  class ShaderProgram
    attr_reader :context,
                :id,
                :shaders

    def initialize(context)
      @context = context
      @id = context.glCreateProgram()
      @attribs, @uniforms = {}, {}

      ObjectSpace.define_finalizer(self, self.class.finalize(@id, @context))
    end

    def self.finalize(id, ctx)
      proc do
        puts "releasing program #{id}"
        ctx.glDeleteProgram(id)
      end
    end

    def attach(*shaders)
      @shaders = shaders unless shaders.length == 0
      @shaders.each { |shader| @context.glAttachShader(@id, shader.id) }
      nil
    end

    def link_program
      @context.glLinkProgram(@id)
      raise CompileError, info_log unless link_status
    end

    def link_status
      @context.get_program(@id, GL::LINK_STATUS)
    end

    def use_program
      @context.glUseProgram(@id)
      if block_given?
        yield
        @context.glUseProgram(0)
      end
    end

    def attrib_location(name)
      name = name.to_sym
      loc = @attribs[name]
      return loc if loc
      loc = @context.glGetAttribLocation(@id, name.to_s)
      return nil if loc < 0
      @attribs[name] = loc
    end

    def attrib_locations(*names)
      names.map { |name| attrib_location(name) }
    end

    def uniform_location(name)
      name = name.to_sym
      loc = @uniforms[name]
      return loc if loc
      loc = @context.glGetUniformLocation(@id, name.to_s)
      return nil if loc < 0
      @uniforms[name] = loc
    end

    def uniform_locations(*names)
      names.map { |name| uniform_location(name) }
    end

    alias_method :link, :link_program
    alias_method :use,  :use_program
  end
end