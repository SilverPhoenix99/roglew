module Roglew
  module GLX
    N3DFX_WINDOW_MODE_MESA     ||= 0x1
    N3DFX_FULLSCREEN_MODE_MESA ||= 0x2
  end
end

module GLX_MESA_set_3dfx_mode
  module RenderContext
    include Roglew::GLExtension

              #GLboolean glXSet3DfxModeMESA(GLint mode)
    functions [:glXSet3DfxModeMESA, [:int], :bool]
  end
end