module Roglew
  module GL
    DEPTH_RANGE                     = 0x0B70
    FIRST_VERTEX_CONVENTION         = 0x8E4D
    LAST_VERTEX_CONVENTION          = 0x8E4E
    LAYER_PROVOKING_VERTEX          = 0x825E
    MAX_VIEWPORTS                   = 0x825B
    PROVOKING_VERTEX                = 0x8E4F
    SCISSOR_BOX                     = 0x0C10
    SCISSOR_TEST                    = 0x0C11
    UNDEFINED_VERTEX                = 0x8260
    VIEWPORT                        = 0x0BA2
    VIEWPORT_BOUNDS_RANGE           = 0x825D
    VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F
    VIEWPORT_SUBPIXEL_BITS          = 0x825C
  end
end

module GL_ARB_viewport_array
  module RenderContext
    include GLExtension

    functions [:glDepthRangeArrayv, [ :uint, :int, :pointer ], :void],
              [:glDepthRangeIndexed, [ :uint, :double, :double ], :void],
              [:glGetDoublei_v, [ :uint, :uint, :pointer ], :void],
              [:glGetFloati_v, [ :uint, :uint, :pointer ], :void],
              [:glScissorArrayv, [ :uint, :int, :pointer ], :void],
              [:glScissorIndexed, [ :uint, :int, :int, :int, :int ], :void],
              [:glScissorIndexedv, [ :uint, :pointer ], :void],
              [:glViewportArrayv, [ :uint, :int, :pointer ], :void],
              [:glViewportIndexedf, [ :uint, :float, :float, :float, :float ], :void],
              [:glViewportIndexedfv, [ :uint, :pointer ], :void]
  end
end

