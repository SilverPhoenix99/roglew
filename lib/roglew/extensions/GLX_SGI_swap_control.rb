module GLX_SGI_swap_control
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #int glXSwapIntervalSGI(int interval)
      [:glXSwapIntervalSGI, [:int], :int]
    ]
  end
end