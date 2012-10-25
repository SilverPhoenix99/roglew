module GL_ARB_framebuffer_object
  def create_framebuffer(*args)
    Framebuffer.new(self, *args)
  end

  def create_renderbuffer(*args)
    Renderbuffer.new(self, *args)
  end

  [
      #void glGetFramebufferAttachmentParameteriv(enum target, enum attachment, enum pname, int *params);
      [:framebuffer_attachment_parameter, :glGetFramebufferAttachmentParameteriv],
      #void glGetRenderbufferParameteriv(enum target, enum pname, int *params);
      [:renderbuffer_parameter, :glGetRenderbufferParameteriv],
  ].each do |method_name, function_name|
    #call without pointer parameter (int *params)
    define_method(method_name) do |*args|
      ptr = FFI::MemoryPointer.new(:int)
      public_send(function_name, *(args << ptr))
      ptr.read_int
    end
  end

  [
      [:framebuffers, :glGenFramebuffers],   #void glGenFramebuffers(GLsizei n, GLuint* framebuffers)
      [:renderbuffers, :glGenRenderbuffers], #void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers)
  ].each { |method_name, function_name| def_gen method_name, function_name }

  [
      [:framebuffers, :glDeleteFramebuffers],   #void glDeleteFramebuffers(GLsizei n, const GLuint* framebuffers)
      [:renderbuffers, :glDeleteRenderbuffers], #void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)
  ].each { |method_name, function_name| def_delete method_name, function_name }
end