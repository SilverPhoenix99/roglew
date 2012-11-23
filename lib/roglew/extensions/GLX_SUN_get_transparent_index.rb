module GLX_SUN_get_transparent_index
  module RenderContext
    include Roglew::GLExtension

              #Status glXGetTransparentIndexSUN(Display* dpy, Window overlay, Window underlay, unsigned long *pTransparentIndex)
    functions [:glXGetTransparentIndexSUN, [:pointer, :int, :int, :pointer], :int]
  end
end