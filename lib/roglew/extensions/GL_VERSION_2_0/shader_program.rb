module Roglew
  class ShaderProgram
    attr_reader :context,
                :id,
                :shaders

    def initialize(context)
      @context = context
      @id = context.glCreateProgram()

      self.class.finalize(self, @id, @context)
    end

    def self.finalize(obj, id, ctx)
      ObjectSpace.define_finalizer(obj, proc do
        ctx.glDeleteProgram(id)
      end)
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
    end

    def uniform_locations(*names)
      names.map { |name| @context.glGetUniformLocation(@id, name) }
    end

    alias_method :link, :link_program
    alias_method :use,  :use_program
  end
end