module GLX_SGIX_swap_group
  module RenderContext
    include Roglew::GLExtension

              #void glXJoinSwapGroupSGIX(Display *dpy, GLXDrawable drawable, GLXDrawable member)
    functions [:glXJoinSwapGroupSGIX, [:pointer, :int, :int], :void]
  end
end