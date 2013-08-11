module GLX_MESA_swap_control
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #int glXGetSwapIntervalMESA(void)
      [:glXGetSwapIntervalMESA, [:int], :void],

      #int glXSwapIntervalMESA(unsigned int interval)
      [:glXSwapIntervalMESA, [:uint], :int]
    ]

  end
end