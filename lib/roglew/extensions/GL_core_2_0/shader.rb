module Roglew
  class Shader
    attr_reader :context, :id, :type

    def initialize(context, type, src = nil)
      @context = context.bind { |c| @id = c.glCreateShader(type) }
      @type = type
      raise OpenGLError, "couldn't create a shader of type #{type.to_s(16)}" if @id == 0
      compile(src) if src

      self.class.finalize(self, @context)
    end

    def self.finalize(obj, ctx)
      ObjectSpace.define_finalizer(obj, proc do
        ctx.glDeleteShader(obj.id)
      end)

    end

    def compile(src)
      @context.shader_sources(self, src)
      @context.glCompileShader(@id)
      raise CompileError, info_log unless compile_status
    end

    def compile_status
      @context.get_shader(self, GL::COMPILE_STATUS)
    end

    def delete_status
      @context.get_shader(self, GL::DELETE_STATUS)
    end

    def info_log_length
      @context.get_shader(self, GL::INFO_LOG_LENGTH)
    end

    def info_log
      @context.get_shader_info_log(self)
    end

    def source_length
      @context.get_shader(self, GL::SHADER_SOURCE_LENGTH)
    end
  end
end