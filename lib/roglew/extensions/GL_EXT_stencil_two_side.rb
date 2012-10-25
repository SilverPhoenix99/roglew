module Roglew
  module GL
    ACTIVE_STENCIL_FACE_EXT   = 0x8911
    STENCIL_TEST_TWO_SIDE_EXT = 0x8910
  end
end

module GL_EXT_stencil_two_side
  module RenderContext
    include GLExtension

    functions [:glActiveStencilFaceEXT, [ :uint ], :void]
  end
end

