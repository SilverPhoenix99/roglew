module Roglew
  module GL
    PIXEL_PACK_BUFFER_BINDING_EXT   = 0x88ED
    PIXEL_PACK_BUFFER_EXT           = 0x88EB
    PIXEL_UNPACK_BUFFER_BINDING_EXT = 0x88EF
    PIXEL_UNPACK_BUFFER_EXT         = 0x88EC
  end
end

module GL_EXT_pixel_buffer_object
  module RenderContext
    include Roglew::GLExtension

    functions
  end
end

