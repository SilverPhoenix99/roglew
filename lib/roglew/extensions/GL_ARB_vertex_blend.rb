module Roglew
  module GL
    ACTIVE_VERTEX_UNITS_ARB  = 0x86A5 unless const_defined? :ACTIVE_VERTEX_UNITS_ARB
    CURRENT_WEIGHT_ARB       = 0x86A8 unless const_defined? :CURRENT_WEIGHT_ARB
    MAX_VERTEX_UNITS_ARB     = 0x86A4 unless const_defined? :MAX_VERTEX_UNITS_ARB
    MODELVIEW0_ARB           = 0x1700 unless const_defined? :MODELVIEW0_ARB
    MODELVIEW1_ARB           = 0x850A unless const_defined? :MODELVIEW1_ARB
    MODELVIEW10_ARB          = 0x872A unless const_defined? :MODELVIEW10_ARB
    MODELVIEW11_ARB          = 0x872B unless const_defined? :MODELVIEW11_ARB
    MODELVIEW12_ARB          = 0x872C unless const_defined? :MODELVIEW12_ARB
    MODELVIEW13_ARB          = 0x872D unless const_defined? :MODELVIEW13_ARB
    MODELVIEW14_ARB          = 0x872E unless const_defined? :MODELVIEW14_ARB
    MODELVIEW15_ARB          = 0x872F unless const_defined? :MODELVIEW15_ARB
    MODELVIEW16_ARB          = 0x8730 unless const_defined? :MODELVIEW16_ARB
    MODELVIEW17_ARB          = 0x8731 unless const_defined? :MODELVIEW17_ARB
    MODELVIEW18_ARB          = 0x8732 unless const_defined? :MODELVIEW18_ARB
    MODELVIEW19_ARB          = 0x8733 unless const_defined? :MODELVIEW19_ARB
    MODELVIEW2_ARB           = 0x8722 unless const_defined? :MODELVIEW2_ARB
    MODELVIEW20_ARB          = 0x8734 unless const_defined? :MODELVIEW20_ARB
    MODELVIEW21_ARB          = 0x8735 unless const_defined? :MODELVIEW21_ARB
    MODELVIEW22_ARB          = 0x8736 unless const_defined? :MODELVIEW22_ARB
    MODELVIEW23_ARB          = 0x8737 unless const_defined? :MODELVIEW23_ARB
    MODELVIEW24_ARB          = 0x8738 unless const_defined? :MODELVIEW24_ARB
    MODELVIEW25_ARB          = 0x8739 unless const_defined? :MODELVIEW25_ARB
    MODELVIEW26_ARB          = 0x873A unless const_defined? :MODELVIEW26_ARB
    MODELVIEW27_ARB          = 0x873B unless const_defined? :MODELVIEW27_ARB
    MODELVIEW28_ARB          = 0x873C unless const_defined? :MODELVIEW28_ARB
    MODELVIEW29_ARB          = 0x873D unless const_defined? :MODELVIEW29_ARB
    MODELVIEW3_ARB           = 0x8723 unless const_defined? :MODELVIEW3_ARB
    MODELVIEW30_ARB          = 0x873E unless const_defined? :MODELVIEW30_ARB
    MODELVIEW31_ARB          = 0x873F unless const_defined? :MODELVIEW31_ARB
    MODELVIEW4_ARB           = 0x8724 unless const_defined? :MODELVIEW4_ARB
    MODELVIEW5_ARB           = 0x8725 unless const_defined? :MODELVIEW5_ARB
    MODELVIEW6_ARB           = 0x8726 unless const_defined? :MODELVIEW6_ARB
    MODELVIEW7_ARB           = 0x8727 unless const_defined? :MODELVIEW7_ARB
    MODELVIEW8_ARB           = 0x8728 unless const_defined? :MODELVIEW8_ARB
    MODELVIEW9_ARB           = 0x8729 unless const_defined? :MODELVIEW9_ARB
    VERTEX_BLEND_ARB         = 0x86A7 unless const_defined? :VERTEX_BLEND_ARB
    WEIGHT_ARRAY_ARB         = 0x86AD unless const_defined? :WEIGHT_ARRAY_ARB
    WEIGHT_ARRAY_POINTER_ARB = 0x86AC unless const_defined? :WEIGHT_ARRAY_POINTER_ARB
    WEIGHT_ARRAY_SIZE_ARB    = 0x86AB unless const_defined? :WEIGHT_ARRAY_SIZE_ARB
    WEIGHT_ARRAY_STRIDE_ARB  = 0x86AA unless const_defined? :WEIGHT_ARRAY_STRIDE_ARB
    WEIGHT_ARRAY_TYPE_ARB    = 0x86A9 unless const_defined? :WEIGHT_ARRAY_TYPE_ARB
    WEIGHT_SUM_UNITY_ARB     = 0x86A6 unless const_defined? :WEIGHT_SUM_UNITY_ARB
  end
end

module GL_ARB_vertex_blend
  module RenderContext
    include Roglew::GLExtension

    functions [:glVertexBlendARB, [ :int ], :void],
              [:glWeightbvARB, [ :int, :pointer ], :void],
              [:glWeightdvARB, [ :int, :pointer ], :void],
              [:glWeightfvARB, [ :int, :pointer ], :void],
              [:glWeightivARB, [ :int, :pointer ], :void],
              [:glWeightPointerARB, [ :int, :uint, :int, :pointer ], :void],
              [:glWeightsvARB, [ :int, :pointer ], :void],
              [:glWeightubvARB, [ :int, :pointer ], :void],
              [:glWeightuivARB, [ :int, :pointer ], :void],
              [:glWeightusvARB, [ :int, :pointer ], :void]
  end
end

