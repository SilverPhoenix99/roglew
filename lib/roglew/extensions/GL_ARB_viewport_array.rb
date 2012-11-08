module Roglew
  module GL
    DEPTH_RANGE                     = 0x0B70 unless const_defined? :DEPTH_RANGE
    FIRST_VERTEX_CONVENTION         = 0x8E4D unless const_defined? :FIRST_VERTEX_CONVENTION
    LAST_VERTEX_CONVENTION          = 0x8E4E unless const_defined? :LAST_VERTEX_CONVENTION
    LAYER_PROVOKING_VERTEX          = 0x825E unless const_defined? :LAYER_PROVOKING_VERTEX
    MAX_VIEWPORTS                   = 0x825B unless const_defined? :MAX_VIEWPORTS
    PROVOKING_VERTEX                = 0x8E4F unless const_defined? :PROVOKING_VERTEX
    SCISSOR_BOX                     = 0x0C10 unless const_defined? :SCISSOR_BOX
    SCISSOR_TEST                    = 0x0C11 unless const_defined? :SCISSOR_TEST
    UNDEFINED_VERTEX                = 0x8260 unless const_defined? :UNDEFINED_VERTEX
    VIEWPORT                        = 0x0BA2 unless const_defined? :VIEWPORT
    VIEWPORT_BOUNDS_RANGE           = 0x825D unless const_defined? :VIEWPORT_BOUNDS_RANGE
    VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F unless const_defined? :VIEWPORT_INDEX_PROVOKING_VERTEX
    VIEWPORT_SUBPIXEL_BITS          = 0x825C unless const_defined? :VIEWPORT_SUBPIXEL_BITS
  end
end

module GL_ARB_viewport_array
  module RenderContext
    include Roglew::GLExtension

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

