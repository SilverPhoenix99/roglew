module  GLX_MESA_copy_sub_buffer
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #void glXCopySubBufferMESA(Display* dpy, GLXDrawable drawable, int x, int y, int width, int height)
      [:glXCopySubBufferMESA, [:pointer, :int, :int, :int, :int, :int], :void]
    ]
  end
end