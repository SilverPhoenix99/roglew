module GLX_MESA_swap_control
  module RenderContext
    include Roglew::GLExtension

              #int glXGetSwapIntervalMESA(void)
    functions [:glXGetSwapIntervalMESA, [:int], :void],

              #int glXSwapIntervalMESA(unsigned int interval)
              [:glXSwapIntervalMESA, [:uint], :int]
  end
end