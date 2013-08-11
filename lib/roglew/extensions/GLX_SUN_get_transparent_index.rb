module GLX_SUN_get_transparent_index
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #Status glXGetTransparentIndexSUN(Display* dpy, Window overlay, Window underlay, unsigned long *pTransparentIndex)
      [:glXGetTransparentIndexSUN, [:pointer, :int, :int, :pointer], :int]
    ]
  end
end