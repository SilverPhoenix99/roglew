module Roglew
  module GL
    N2X_BIT_ATI                           = 0x00000001 unless const_defined? :N2X_BIT_ATI
    N4X_BIT_ATI                           = 0x00000002 unless const_defined? :N4X_BIT_ATI
    N8X_BIT_ATI                           = 0x00000004 unless const_defined? :N8X_BIT_ATI
    ADD_ATI                               = 0x8963 unless const_defined? :ADD_ATI
    BIAS_BIT_ATI                          = 0x00000008 unless const_defined? :BIAS_BIT_ATI
    BLUE_BIT_ATI                          = 0x00000004 unless const_defined? :BLUE_BIT_ATI
    CND_ATI                               = 0x896A unless const_defined? :CND_ATI
    CND0_ATI                              = 0x896B unless const_defined? :CND0_ATI
    COLOR_ALPHA_PAIRING_ATI               = 0x8975 unless const_defined? :COLOR_ALPHA_PAIRING_ATI
    COMP_BIT_ATI                          = 0x00000002 unless const_defined? :COMP_BIT_ATI
    CON_0_ATI                             = 0x8941 unless const_defined? :CON_0_ATI
    CON_1_ATI                             = 0x8942 unless const_defined? :CON_1_ATI
    CON_2_ATI                             = 0x8943 unless const_defined? :CON_2_ATI
    CON_3_ATI                             = 0x8944 unless const_defined? :CON_3_ATI
    CON_4_ATI                             = 0x8945 unless const_defined? :CON_4_ATI
    CON_5_ATI                             = 0x8946 unless const_defined? :CON_5_ATI
    CON_6_ATI                             = 0x8947 unless const_defined? :CON_6_ATI
    CON_7_ATI                             = 0x8948 unless const_defined? :CON_7_ATI
    DOT2_ADD_ATI                          = 0x896C unless const_defined? :DOT2_ADD_ATI
    DOT3_ATI                              = 0x8966 unless const_defined? :DOT3_ATI
    DOT4_ATI                              = 0x8967 unless const_defined? :DOT4_ATI
    EIGHTH_BIT_ATI                        = 0x00000020 unless const_defined? :EIGHTH_BIT_ATI
    FRAGMENT_SHADER_ATI                   = 0x8920 unless const_defined? :FRAGMENT_SHADER_ATI
    GREEN_BIT_ATI                         = 0x00000002 unless const_defined? :GREEN_BIT_ATI
    HALF_BIT_ATI                          = 0x00000008 unless const_defined? :HALF_BIT_ATI
    LERP_ATI                              = 0x8969 unless const_defined? :LERP_ATI
    MAD_ATI                               = 0x8968 unless const_defined? :MAD_ATI
    MOV_ATI                               = 0x8961 unless const_defined? :MOV_ATI
    MUL_ATI                               = 0x8964 unless const_defined? :MUL_ATI
    NEGATE_BIT_ATI                        = 0x00000004 unless const_defined? :NEGATE_BIT_ATI
    NUM_FRAGMENT_CONSTANTS_ATI            = 0x896F unless const_defined? :NUM_FRAGMENT_CONSTANTS_ATI
    NUM_FRAGMENT_REGISTERS_ATI            = 0x896E unless const_defined? :NUM_FRAGMENT_REGISTERS_ATI
    NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973 unless const_defined? :NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
    NUM_INSTRUCTIONS_PER_PASS_ATI         = 0x8971 unless const_defined? :NUM_INSTRUCTIONS_PER_PASS_ATI
    NUM_INSTRUCTIONS_TOTAL_ATI            = 0x8972 unless const_defined? :NUM_INSTRUCTIONS_TOTAL_ATI
    NUM_LOOPBACK_COMPONENTS_ATI           = 0x8974 unless const_defined? :NUM_LOOPBACK_COMPONENTS_ATI
    NUM_PASSES_ATI                        = 0x8970 unless const_defined? :NUM_PASSES_ATI
    QUARTER_BIT_ATI                       = 0x00000010 unless const_defined? :QUARTER_BIT_ATI
    RED_BIT_ATI                           = 0x00000001 unless const_defined? :RED_BIT_ATI
    REG_0_ATI                             = 0x8921 unless const_defined? :REG_0_ATI
    REG_1_ATI                             = 0x8922 unless const_defined? :REG_1_ATI
    REG_2_ATI                             = 0x8923 unless const_defined? :REG_2_ATI
    REG_3_ATI                             = 0x8924 unless const_defined? :REG_3_ATI
    REG_4_ATI                             = 0x8925 unless const_defined? :REG_4_ATI
    REG_5_ATI                             = 0x8926 unless const_defined? :REG_5_ATI
    SATURATE_BIT_ATI                      = 0x00000040 unless const_defined? :SATURATE_BIT_ATI
    SECONDARY_INTERPOLATOR_ATI            = 0x896D unless const_defined? :SECONDARY_INTERPOLATOR_ATI
    SUB_ATI                               = 0x8965 unless const_defined? :SUB_ATI
    SWIZZLE_STQ_ATI                       = 0x8977 unless const_defined? :SWIZZLE_STQ_ATI
    SWIZZLE_STQ_DQ_ATI                    = 0x8979 unless const_defined? :SWIZZLE_STQ_DQ_ATI
    SWIZZLE_STR_ATI                       = 0x8976 unless const_defined? :SWIZZLE_STR_ATI
    SWIZZLE_STR_DR_ATI                    = 0x8978 unless const_defined? :SWIZZLE_STR_DR_ATI
    SWIZZLE_STRQ_ATI                      = 0x897A unless const_defined? :SWIZZLE_STRQ_ATI
    SWIZZLE_STRQ_DQ_ATI                   = 0x897B unless const_defined? :SWIZZLE_STRQ_DQ_ATI
  end
end

module GL_ATI_fragment_shader
  module RenderContext
    include Roglew::GLExtension

    functions [:glAlphaFragmentOp1ATI, [ :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glAlphaFragmentOp2ATI, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glAlphaFragmentOp3ATI, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glBeginFragmentShaderATI, [  ], :void],
              [:glBindFragmentShaderATI, [ :uint ], :void],
              [:glColorFragmentOp1ATI, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glColorFragmentOp2ATI, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glColorFragmentOp3ATI, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glDeleteFragmentShaderATI, [ :uint ], :void],
              [:glEndFragmentShaderATI, [  ], :void],
              [:glGenFragmentShadersATI, [ :uint ], :uint],
              [:glPassTexCoordATI, [ :uint, :uint, :uint ], :void],
              [:glSampleMapATI, [ :uint, :uint, :uint ], :void],
              [:glSetFragmentShaderConstantATI, [ :uint, :pointer ], :void]
  end
end

