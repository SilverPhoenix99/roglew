module Roglew
  class Shader
    attr_reader :context, :id, :type

    def initialize(context, type, src = nil)
      @context = context
      @id = context.glCreateShader(type)
      @type = type
      raise OpenGLError, "couldn't create a shader of type #{type.to_s(16)}" if @id == 0

      if src
        src = File.read(src) if File.file? src
        compile(src)
      end

      ObjectSpace.define_finalizer(self, self.class.finalize(@id, @context))
    end

    def self.finalize(id, ctx)
      proc do
        puts "releasing shader #{id}"
        ctx.glDeleteShader(id)
      end
    end

    def compile(src)
      @context.shader_sources(@id, src)
      @context.glCompileShader(@id)
      raise CompileError, info_log unless compile_status
    end

    def compile_status
      @context.get_shader(@id, GL::COMPILE_STATUS)
    end

    def delete_status
      @context.get_shader(@id, GL::DELETE_STATUS)
    end

    def info_log_length
      @context.get_shader(@id, GL::INFO_LOG_LENGTH)
    end

    def info_log
      @context.get_shader_info_log(@id)
    end

    def source_length
      @context.get_shader(@id, GL::SHADER_SOURCE_LENGTH)
    end

    alias_method :compiled?, :compile_status
  end
end