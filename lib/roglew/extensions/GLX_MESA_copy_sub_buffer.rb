module  GLX_MESA_copy_sub_buffer
  module RenderContext
    include Roglew::GLExtension

              #void glXCopySubBufferMESA(Display* dpy, GLXDrawable drawable, int x, int y, int width, int height)
    functions [:glXCopySubBufferMESA, [:pointer, :int, :int, :int, :int, :int], :void]
  end
end