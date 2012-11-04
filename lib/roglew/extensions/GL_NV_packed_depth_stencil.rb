module Roglew
  module GL
    DEPTH_STENCIL_NV     = 0x84F9
    UNSIGNED_INT_24_8_NV = 0x84FA
  end
end

module GL_NV_packed_depth_stencil
  module RenderContext
    include Roglew::GLExtension

    functions
  end
end

