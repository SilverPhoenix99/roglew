module Roglew
  module GL
    N2X_BIT_ATI                           ||= 0x00000001
    N4X_BIT_ATI                           ||= 0x00000002
    N8X_BIT_ATI                           ||= 0x00000004
    ADD_ATI                               ||= 0x8963
    BIAS_BIT_ATI                          ||= 0x00000008
    BLUE_BIT_ATI                          ||= 0x00000004
    CND_ATI                               ||= 0x896A
    CND0_ATI                              ||= 0x896B
    COLOR_ALPHA_PAIRING_ATI               ||= 0x8975
    COMP_BIT_ATI                          ||= 0x00000002
    CON_0_ATI                             ||= 0x8941
    CON_1_ATI                             ||= 0x8942
    CON_2_ATI                             ||= 0x8943
    CON_3_ATI                             ||= 0x8944
    CON_4_ATI                             ||= 0x8945
    CON_5_ATI                             ||= 0x8946
    CON_6_ATI                             ||= 0x8947
    CON_7_ATI                             ||= 0x8948
    DOT2_ADD_ATI                          ||= 0x896C
    DOT3_ATI                              ||= 0x8966
    DOT4_ATI                              ||= 0x8967
    EIGHTH_BIT_ATI                        ||= 0x00000020
    FRAGMENT_SHADER_ATI                   ||= 0x8920
    GREEN_BIT_ATI                         ||= 0x00000002
    HALF_BIT_ATI                          ||= 0x00000008
    LERP_ATI                              ||= 0x8969
    MAD_ATI                               ||= 0x8968
    MOV_ATI                               ||= 0x8961
    MUL_ATI                               ||= 0x8964
    NEGATE_BIT_ATI                        ||= 0x00000004
    NUM_FRAGMENT_CONSTANTS_ATI            ||= 0x896F
    NUM_FRAGMENT_REGISTERS_ATI            ||= 0x896E
    NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI ||= 0x8973
    NUM_INSTRUCTIONS_PER_PASS_ATI         ||= 0x8971
    NUM_INSTRUCTIONS_TOTAL_ATI            ||= 0x8972
    NUM_LOOPBACK_COMPONENTS_ATI           ||= 0x8974
    NUM_PASSES_ATI                        ||= 0x8970
    QUARTER_BIT_ATI                       ||= 0x00000010
    RED_BIT_ATI                           ||= 0x00000001
    REG_0_ATI                             ||= 0x8921
    REG_1_ATI                             ||= 0x8922
    REG_2_ATI                             ||= 0x8923
    REG_3_ATI                             ||= 0x8924
    REG_4_ATI                             ||= 0x8925
    REG_5_ATI                             ||= 0x8926
    SATURATE_BIT_ATI                      ||= 0x00000040
    SECONDARY_INTERPOLATOR_ATI            ||= 0x896D
    SUB_ATI                               ||= 0x8965
    SWIZZLE_STQ_ATI                       ||= 0x8977
    SWIZZLE_STQ_DQ_ATI                    ||= 0x8979
    SWIZZLE_STR_ATI                       ||= 0x8976
    SWIZZLE_STR_DR_ATI                    ||= 0x8978
    SWIZZLE_STRQ_ATI                      ||= 0x897A
    SWIZZLE_STRQ_DQ_ATI                   ||= 0x897B
  end
end

module GL_ATI_fragment_shader
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glAlphaFragmentOp1ATI, [ :uint, :uint, :uint, :uint, :uint, :uint ], :void],
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
    ]
  end
end

