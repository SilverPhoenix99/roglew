module GLX_MESA_release_buffers
  module RenderContext
    include Roglew::GLExtension

              #Bool glXReleaseBuffersMESA(Display* dpy, GLXDrawable d)
    functions [:glXReleaseBuffersMESA, [:pointer, :int], :bool]
  end
end