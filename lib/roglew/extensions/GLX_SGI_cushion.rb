module GLX_SGI_cushion
  module RenderContext
    include Roglew::GLExtension

              #void glXCushionSGI(Display* dpy, Window window, float cushion)
    functions [:glXCushionSGI, [:pointer, :int, :float], :void]
  end
end