module Roglew
  module GL
    CURRENT_VERTEX_WEIGHT_EXT       = 0x850B
    MODELVIEW0_EXT                  = 0x1700
    MODELVIEW0_MATRIX_EXT           = 0x0BA6
    MODELVIEW0_STACK_DEPTH_EXT      = 0x0BA3
    MODELVIEW1_EXT                  = 0x850A
    MODELVIEW1_MATRIX_EXT           = 0x8506
    MODELVIEW1_STACK_DEPTH_EXT      = 0x8502
    VERTEX_WEIGHT_ARRAY_EXT         = 0x850C
    VERTEX_WEIGHT_ARRAY_POINTER_EXT = 0x8510
    VERTEX_WEIGHT_ARRAY_SIZE_EXT    = 0x850D
    VERTEX_WEIGHT_ARRAY_STRIDE_EXT  = 0x850F
    VERTEX_WEIGHT_ARRAY_TYPE_EXT    = 0x850E
    VERTEX_WEIGHTING_EXT            = 0x8509
  end
end

module GL_EXT_vertex_weighting
  module RenderContext
    include GLExtension

    functions [:glVertexWeightfEXT, [ :float ], :void],
              [:glVertexWeightfvEXT, [ :pointer ], :void],
              [:glVertexWeightPointerEXT, [ :int, :uint, :int, :pointer ], :void]
  end
end

