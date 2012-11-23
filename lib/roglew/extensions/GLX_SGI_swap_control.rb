module GLX_SGI_swap_control
  module RenderContext
    include Roglew::GLExtension

              #int glXSwapIntervalSGI(int interval)
    functions [:glXSwapIntervalSGI, [:int], :int]
  end
end