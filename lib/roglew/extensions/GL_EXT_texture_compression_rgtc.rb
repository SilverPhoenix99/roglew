module Roglew
  module GL
    COMPRESSED_RED_GREEN_RGTC2_EXT        = 0x8DBD
    COMPRESSED_RED_RGTC1_EXT              = 0x8DBB
    COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = 0x8DBE
    COMPRESSED_SIGNED_RED_RGTC1_EXT       = 0x8DBC
  end
end

module GL_EXT_texture_compression_rgtc
  module RenderContext
    include Roglew::GLExtension

    functions
  end
end

