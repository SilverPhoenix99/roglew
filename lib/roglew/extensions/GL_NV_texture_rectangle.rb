module Roglew
  module GL
    MAX_RECTANGLE_TEXTURE_SIZE_NV = 0x84F8
    PROXY_TEXTURE_RECTANGLE_NV    = 0x84F7
    TEXTURE_BINDING_RECTANGLE_NV  = 0x84F6
    TEXTURE_RECTANGLE_NV          = 0x84F5
  end
end

module GL_NV_texture_rectangle
  module RenderContext
    include GLExtension

    functions
  end
end
