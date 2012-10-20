module GL_EXT_framebuffer_object
  module RenderContext
    include GLObject

    def create_framebufferEXT(*args)
      FramebufferEXT.new(self, *args)
    end

    def create_renderbufferEXT(*args)
      RenderbufferEXT.new(self, *args)
    end

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
      [:framebuffersEXT, :glGenFramebuffersEXT],   #void glGenFramebuffersEXT(GLsizei n, GLuint* framebuffers)
      [:renderbuffersEXT, :glGenRenderbuffersEXT], #void glGenRenderbuffersEXT(GLsizei n, GLuint* renderbuffers)
    ].each { |method_name, function_name| def_gen method_name, function_name }

    [
      [:framebuffersEXT, :glDeleteFramebuffersEXT],   #void glDeleteFramebuffersEXT(GLsizei n, const GLuint* framebuffers)
      [:renderbuffersEXT, :glDeleteRenderbuffersEXT], #void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)
    ].each { |method_name, function_name| def_delete method_name, function_name }
  end
end