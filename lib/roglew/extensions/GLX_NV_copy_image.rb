module GLX_NV_copy_image
  module RenderContext
    include Roglew::GLExtension

              #void glXCopyImageSubDataNV(
              #   Display *dpy,
              #   GLXContext srcCtx,
              #   GLuint srcName,
              #   GLenum srcTarget,
              #   GLint srcLevel,
              #   GLint srcX,
              #   GLint srcY,
              #   GLint srcZ,
              #   GLXContext dstCtx,
              #   GLuint dstName,
              #   GLenum dstTarget,
              #   GLint dstLevel,
              #   GLint dstX,
              #   GLint dstY,
              #   GLint dstZ,
              #   GLsizei width,
              #   GLsizei height,
              #   GLsizei depth)
    functions [glXCopyImageSubDataNV, [:pointer]*2 + [:uint]*2 + [:int]*4 + [:pointer] + [:uint]*2 + [:int]*7, :void]
  end
end