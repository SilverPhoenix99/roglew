module Roglew
  module GL
    UNPACK_CONSTANT_DATA_SUNX  = 0x81D5
    TEXTURE_CONSTANT_DATA_SUNX = 0x81D6
  end
end

module GL_SUNX_constant_data
  module RenderContext
    include Roglew::GLExtension

    functions [:glFinishTextureSUNX, [  ], :void]
  end
end

