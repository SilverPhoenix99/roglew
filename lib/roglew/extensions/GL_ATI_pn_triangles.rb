module Roglew
  module GL
    MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F1 unless const_defined? :MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
    PN_TRIANGLES_ATI                       = 0x87F0 unless const_defined? :PN_TRIANGLES_ATI
    PN_TRIANGLES_NORMAL_MODE_ATI           = 0x87F3 unless const_defined? :PN_TRIANGLES_NORMAL_MODE_ATI
    PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI    = 0x87F7 unless const_defined? :PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
    PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87F8 unless const_defined? :PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI
    PN_TRIANGLES_POINT_MODE_ATI            = 0x87F2 unless const_defined? :PN_TRIANGLES_POINT_MODE_ATI
    PN_TRIANGLES_POINT_MODE_CUBIC_ATI      = 0x87F6 unless const_defined? :PN_TRIANGLES_POINT_MODE_CUBIC_ATI
    PN_TRIANGLES_POINT_MODE_LINEAR_ATI     = 0x87F5 unless const_defined? :PN_TRIANGLES_POINT_MODE_LINEAR_ATI
    PN_TRIANGLES_TESSELATION_LEVEL_ATI     = 0x87F4 unless const_defined? :PN_TRIANGLES_TESSELATION_LEVEL_ATI
  end
end

module GL_ATI_pn_triangles
  module RenderContext
    include Roglew::GLExtension

    functions [:glPNTrianglesfATI, [ :uint, :float ], :void],
              [:glPNTrianglesiATI, [ :uint, :int ], :void]
  end
end

