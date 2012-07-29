require 'roglew/extensions/GL_EXT_framebuffer_object/render_context'

Roglew::RenderContext.on_load do |ctx|
  [
    #void glBlitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)
    [:blit_framebuffer, :glBlitFramebuffer, [:GLint]*8 << :GLbitfield << :GLenum, :void],
    #void glFramebufferTextureLayer(GLenum target,GLenum attachment, GLuint texture,GLint level,GLint layer)
    [:framebuffer_texture_layer, :glFramebufferTextureLayer, ([:GLenum]*2 << :GLuint) + [:GLint]*2, :void],
    #void glRenderbufferStorageMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
    [:renderbuffer_storage_multisample, :glRenderbufferStorageMultisample, [:GLenum, :GLsizei, :GLenum, :GLsizei, :GLsizei], :void],
  ].each { |f| ctx.def_function *f }
end