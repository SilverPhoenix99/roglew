module Roglew
  module GL
    MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI ||= 0x87F1
    PN_TRIANGLES_ATI                       ||= 0x87F0
    PN_TRIANGLES_NORMAL_MODE_ATI           ||= 0x87F3
    PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI    ||= 0x87F7
    PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI ||= 0x87F8
    PN_TRIANGLES_POINT_MODE_ATI            ||= 0x87F2
    PN_TRIANGLES_POINT_MODE_CUBIC_ATI      ||= 0x87F6
    PN_TRIANGLES_POINT_MODE_LINEAR_ATI     ||= 0x87F5
    PN_TRIANGLES_TESSELATION_LEVEL_ATI     ||= 0x87F4
  end
end

module GL_ATI_pn_triangles
  module RenderContext
    include Roglew::GLExtension

    functions [:glPNTrianglesfATI, [ :uint, :float ], :void],
              [:glPNTrianglesiATI, [ :uint, :int ], :void]
  end
end

