module GLX_SGIX_swap_barrier
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #void glXBindSwapBarrierSGIX(Display *dpy, GLXDrawable drawable, int barrier)
      [:glXBindSwapBarrierSGIX, [:pointer, ], :void],

      #Bool glXQueryMaxSwapBarriersSGIX(Display *dpy, int screen, int *max)
      [:glXQueryMaxSwapBarriersSGIX, [:pointer, ], :bool]
    ]
  end
end