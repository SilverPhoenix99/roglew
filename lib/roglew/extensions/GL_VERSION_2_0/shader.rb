module Roglew
  class Shader
    attr_reader :handle, :id, :type

    def initialize(handle, type, src = nil)
      @handle, @type = handle, type
      @id = handle.bind { handle.glCreateShader(type) }
      raise OpenGLError, "couldn't create a shader of type #{type.to_s(16)}" if @id == 0
      compile(File.file?(src) ? File.read(src) : src) if src

      ObjectSpace.define_finalizer(self, self.class.finalize(@id, @handle))
    end

    def self.finalize(id, handle)
      proc do
        #puts "releasing shader #{id}"
        handle.bind { handle.glDeleteShader(id) }
      end
    end

    def compile(src)
      @handle.bind do |context|
        context.shader_sources(@id, src)
        @handle.glCompileShader(@id)
        raise CompileError, info_log unless compile_status
      end
    end

    def compile_status
      @handle.bind { |context| context.get_shader(@id, GL::COMPILE_STATUS) }
    end

    def delete_status
      @handle.bind { |context| context.get_shader(@id, GL::DELETE_STATUS) }
    end

    def info_log_length
      @handle.bind { |context| context.get_shader(@id, GL::INFO_LOG_LENGTH) }
    end

    def info_log
      @handle.bind { |context| context.get_shader_info_log(@id) }
    end

    def source_length
      @handle.bind { |context| context.get_shader(@id, GL::SHADER_SOURCE_LENGTH) }
    end

    alias_method :compiled?, :compile_status
  end
end