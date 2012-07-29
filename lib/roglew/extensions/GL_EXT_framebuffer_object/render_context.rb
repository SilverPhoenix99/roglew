module GL_EXT_framebuffer_object
  def self.on_load(ctx)
    [
      #void glBindFramebufferEXT(GLenum target, GLuint framebuffer)
      [:bind_framebuffer, :glBindFramebufferEXT, [:GLenum, :GLuint], :void],
      #GLenum glCheckFramebufferStatusEXT(GLenum target)
      [:check_framebuffer_status, :glCheckFramebufferStatusEXT, [:GLenum], :GLenum],
      #void glFramebufferRenderbufferEXT(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
      [:framebuffer_renderbuffer, :glFramebufferRenderbufferEXT, [:GLenum]*3 << :GLuint, :void],
      #void glFramebufferTexture1DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
      #[:framebuffer_texture_1d, :glFramebufferTexture1DEXT, [:GLenum]*3 << :GLuint << :GLint, :void],
      #void glFramebufferTexture2DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
      [:framebuffer_texture_2d, :glFramebufferTexture2DEXT, [:GLenum]*3 << :GLuint << :GLint, :void],
      #void glFramebufferTexture3DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint layer)
      #[:framebuffer_texture_3d, :glFramebufferTexture3DEXT, ([:GLenum]*3 << :GLuint) + [:GLint]*2, :void],
      #GLboolean glIsFramebufferEXT(GLuint framebuffer)
      [:framebuffer?, :glIsFramebufferEXT, [:GLuint], :GLboolean],

      #void glBindRenderbufferEXT(GLenum target, GLuint renderbuffer)
      [:bind_renderbuffer, :glBindRenderbufferEXT, [:GLenum, :GLuint], :void],
      #GLboolean glIsRenderbufferEXT(GLuint renderbuffer)
      [:renderbuffer?, :glIsRenderbufferEXT, [:GLuint], :GLboolean],
      #void glRenderbufferStorageEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
      [:renderbuffer_storage, :glRenderbufferStorageEXT, [:GLenum]*2 + [:GLsizei]*2, :void],

      #void glGenerateMipmap(GLenum target)
      [:generate_mipmap, :glGenerateMipmapEXT, [:GLenum], :void],
    ].each { |f| ctx.def_function *f }

    [
      #void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint* params)
      [:framebuffer_attachment_parameter, :glGetFramebufferAttachmentParameterivEXT, [:GLenum]*3 << :pointer, :void],
      #void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint* params)
      [:renderbuffer_parameter, :glGetRenderbufferParameterivEXT, [:GLenum]*2 << :pointer, :void],
    ].each do |method_name, function_name, parameters, return_type|
      func = function(function_name, parameters, return_type)
      ctx.send(:define_singleton_method, method_name) do |*args|
        ptr = FFI::MemoryPointer.new(:int)
        func.(*(args << ptr))
        ptr.read_int
      end
    end

    [
      #void glGenFramebuffers(GLsizei n, GLuint* framebuffers)
      [:gen_framebuffers, :glGenFramebuffers],
      #void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers)
      [:gen_renderbuffers, :glGenRenderbuffers],
    ].each do |method_name, function_name|
      func = function(function_name, [:GLsizei, :pointer], :void)
      ctx.send(:define_singleton_method, method_name, ->(count = 1) do
        ptr = FFI::MemoryPointer.new(:uint, count)
        func.(count, ptr)
        ids = ptr.read_array_of_uint(count)
        count == 1 ? ids[0] : ids
      end)
    end

    [
      #void glDeleteFramebuffers(GLsizei n, const GLuint* framebuffers)
      [:delete_framebuffers, :glDeleteFramebuffers],
      #void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)
      [:delete_renderbuffers, :glDeleteRenderbuffers],
    ].each do |method_name, function_name|
      func = function(function_name, [:GLsizei, :pointer], :void)
      ctx.send(:define_singleton_method, method_name) do |*args|
        args = args.flatten
        ptr = FFI::MemoryPointer.new(:uint, args.length)
        ptr.write_array_of_uint(args)
        func.(ptr)
      end
    end

    ctx.send(:define_singleton_method, :framebuffer) { |*args| Framebuffer.new(self, *args) }
    ctx.send(:define_singleton_method, :renderbuffer) { |*args| Renderbuffer.new(self, *args) }

    texture2d = public_method :texture2d
    generate_mipmap = public_method :generate_mipmap
    ctx.send(:define_singleton_method, :texture2d, ->(*args) do
      texture2d.(*args).ergo do
        define_singleton_method(:generate_mipmap, ->(target) { generate_mipmap.(target) })
        self
      end
    end)
  end
end