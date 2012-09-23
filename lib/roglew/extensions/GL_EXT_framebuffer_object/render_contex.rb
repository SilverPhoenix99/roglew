module GL_EXT_framebuffer_object
  module RenderContext
    [
      #void glGetFramebufferAttachmentParameterivEXT(enum target, enum attachment, enum pname, int *params);
      [:framebuffer_attachment_parameterEXT, :glGetFramebufferAttachmentParameterivEXT],
      #void glGetRenderbufferParameterivEXT(enum target, enum pname, int *params);
      [:renderbuffer_parameterEXT, :glGetRenderbufferParameterivEXT],
    ].each do |method_name, function_name|
      #call without pointer parameter (int *params)
      define_method(method_name) do |*args|
        ptr = FFI::MemoryPointer.new(:int)
        public_send(function_name, *(args << ptr))
        ptr.read_int
      end
    end

    [
      #void glGenFramebuffersEXT(GLsizei n, GLuint* framebuffers)
      [:gen_framebuffersEXT, :glGenFramebuffersEXT],
      #void glGenRenderbuffersEXT(GLsizei n, GLuint* renderbuffers)
      [:gen_renderbuffersEXT, :glGenRenderbuffersEXT],
    ].each do |method_name, function_name|
      define_method(method_name, ->(count = 1) do
        ptr = FFI::MemoryPointer.new(:uint, count)
        public_send(function_name, count, ptr)
        ids = ptr.read_array_of_uint(count)
        count == 1 ? ids[0] : ids
      end)
    end

    [
      #void glDeleteFramebuffersEXT(GLsizei n, const GLuint* framebuffers)
      [:delete_framebuffersEXT, :glDeleteFramebuffersEXT],
      #void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)
      [:delete_renderbuffersEXT, :glDeleteRenderbuffersEXT],
    ].each do |method_name, function_name|
      define_method(method_name) do |*args|
        args = args.flatten
        ptr = FFI::MemoryPointer.new(:uint, args.length)
        ptr.write_array_of_uint(args)
        public_send(function_name, ptr)
      end
    end

    def create_framebufferEXT(*args)
      FramebufferEXT.new(self, *args)
    end

    def create_renderbufferEXT(*args)
      RenderbufferEXT.new(self, *args)
    end
  end
end