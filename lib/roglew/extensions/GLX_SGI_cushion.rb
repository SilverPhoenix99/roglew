module GLX_SGI_cushion
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #void glXCushionSGI(Display* dpy, Window window, float cushion)
      [:glXCushionSGI, [:pointer, :int, :float], :void]
    ]
  end
end