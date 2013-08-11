module GLX_SGIX_swap_group
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #void glXJoinSwapGroupSGIX(Display *dpy, GLXDrawable drawable, GLXDrawable member)
      [:glXJoinSwapGroupSGIX, [:pointer, :int, :int], :void]
    ]
  end
end