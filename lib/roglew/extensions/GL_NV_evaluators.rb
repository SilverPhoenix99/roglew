module Roglew
  module GL
    EVAL_2D_NV                      = 0x86C0
    EVAL_FRACTIONAL_TESSELLATION_NV = 0x86C
    EVAL_TRIANGULAR_2D_NV           = 0x86C1
    EVAL_VERTEX_ATTRIB0_NV          = 0x86C6
    EVAL_VERTEX_ATTRIB1_NV          = 0x86C7
    EVAL_VERTEX_ATTRIB10_NV         = 0x86D0
    EVAL_VERTEX_ATTRIB11_NV         = 0x86D1
    EVAL_VERTEX_ATTRIB12_NV         = 0x86D2
    EVAL_VERTEX_ATTRIB13_NV         = 0x86D3
    EVAL_VERTEX_ATTRIB14_NV         = 0x86D4
    EVAL_VERTEX_ATTRIB15_NV         = 0x86D5
    EVAL_VERTEX_ATTRIB2_NV          = 0x86C8
    EVAL_VERTEX_ATTRIB3_NV          = 0x86C9
    EVAL_VERTEX_ATTRIB4_NV          = 0x86CA
    EVAL_VERTEX_ATTRIB5_NV          = 0x86CB
    EVAL_VERTEX_ATTRIB6_NV          = 0x86CC
    EVAL_VERTEX_ATTRIB7_NV          = 0x86CD
    EVAL_VERTEX_ATTRIB8_NV          = 0x86CE
    EVAL_VERTEX_ATTRIB9_NV          = 0x86CF
    MAP_ATTRIB_U_ORDER_NV           = 0x86C3
    MAP_ATTRIB_V_ORDER_NV           = 0x86C4
    MAP_TESSELLATION_NV             = 0x86C2
    MAX_MAP_TESSELLATION_NV         = 0x86D6
    MAX_RATIONAL_EVAL_ORDER_NV      = 0x86D7
  end
end

module GL_NV_evaluators
  module RenderContext
    include Roglew::GLExtension

    functions [:glEvalMapsNV, [ :uint, :uint ], :void],
              [:glGetMapAttribParameterfvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMapAttribParameterivNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMapControlPointsNV, [ :uint, :uint, :uint, :int, :int, :uchar, :pointer ], :void],
              [:glGetMapParameterfvNV, [ :uint, :uint, :pointer ], :void],
              [:glGetMapParameterivNV, [ :uint, :uint, :pointer ], :void],
              [:glMapControlPointsNV, [ :uint, :uint, :uint, :int, :int, :int, :int, :uchar, :pointer ], :void],
              [:glMapParameterfvNV, [ :uint, :uint, :pointer ], :void],
              [:glMapParameterivNV, [ :uint, :uint, :pointer ], :void]
  end
end

