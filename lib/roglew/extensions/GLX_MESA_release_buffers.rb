module GLX_MESA_release_buffers
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #Bool glXReleaseBuffersMESA(Display* dpy, GLXDrawable d)
      [:glXReleaseBuffersMESA, [:pointer, :int], :bool]
    ]
  end
end