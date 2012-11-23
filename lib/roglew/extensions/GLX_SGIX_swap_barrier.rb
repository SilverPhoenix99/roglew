module GLX_SGIX_swap_barrier
  module RenderContext
    include Roglew::GLExtension

              #void glXBindSwapBarrierSGIX(Display *dpy, GLXDrawable drawable, int barrier)
    functions [:glXBindSwapBarrierSGIX, [:pointer, ], :void],

              #Bool glXQueryMaxSwapBarriersSGIX(Display *dpy, int screen, int *max)
              [:glXQueryMaxSwapBarriersSGIX, [:pointer, ], :bool]
  end
end