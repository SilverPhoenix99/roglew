module Roglew
  module GL
    BIAS_BY_NEGATIVE_ONE_HALF_NV   = 0x8541
    COLOR_SUM_CLAMP_NV             = 0x854F
    COMBINER_AB_DOT_PRODUCT_NV     = 0x8545
    COMBINER_AB_OUTPUT_NV          = 0x854A
    COMBINER_BIAS_NV               = 0x8549
    COMBINER_CD_DOT_PRODUCT_NV     = 0x8546
    COMBINER_CD_OUTPUT_NV          = 0x854B
    COMBINER_COMPONENT_USAGE_NV    = 0x8544
    COMBINER_INPUT_NV              = 0x8542
    COMBINER_MAPPING_NV            = 0x8543
    COMBINER_MUX_SUM_NV            = 0x8547
    COMBINER_SCALE_NV              = 0x8548
    COMBINER_SUM_OUTPUT_NV         = 0x854C
    COMBINER0_NV                   = 0x8550
    COMBINER1_NV                   = 0x8551
    COMBINER2_NV                   = 0x8552
    COMBINER3_NV                   = 0x8553
    COMBINER4_NV                   = 0x8554
    COMBINER5_NV                   = 0x8555
    COMBINER6_NV                   = 0x8556
    COMBINER7_NV                   = 0x8557
    CONSTANT_COLOR0_NV             = 0x852A
    CONSTANT_COLOR1_NV             = 0x852B
    DISCARD_NV                     = 0x8530
    E_TIMES_F_NV                   = 0x8531
    EXPAND_NEGATE_NV               = 0x8539
    EXPAND_NORMAL_NV               = 0x8538
    HALF_BIAS_NEGATE_NV            = 0x853B
    HALF_BIAS_NORMAL_NV            = 0x853A
    MAX_GENERAL_COMBINERS_NV       = 0x854D
    NUM_GENERAL_COMBINERS_NV       = 0x854E
    PRIMARY_COLOR_NV               = 0x852C
    REGISTER_COMBINERS_NV          = 0x8522
    SCALE_BY_FOUR_NV               = 0x853F
    SCALE_BY_ONE_HALF_NV           = 0x8540
    SCALE_BY_TWO_NV                = 0x853E
    SECONDARY_COLOR_NV             = 0x852D
    SIGNED_IDENTITY_NV             = 0x853C
    SIGNED_NEGATE_NV               = 0x853D
    SPARE0_NV                      = 0x852E
    SPARE0_PLUS_SECONDARY_COLOR_NV = 0x8532
    SPARE1_NV                      = 0x852F
    UNSIGNED_IDENTITY_NV           = 0x8536
    UNSIGNED_INVERT_NV             = 0x8537
    VARIABLE_A_NV                  = 0x8523
    VARIABLE_B_NV                  = 0x8524
    VARIABLE_C_NV                  = 0x8525
    VARIABLE_D_NV                  = 0x8526
    VARIABLE_E_NV                  = 0x8527
    VARIABLE_F_NV                  = 0x8528
    VARIABLE_G_NV                  = 0x8529
  end
end

module GL_NV_register_combiners
  module RenderContext
    include Roglew::GLExtension

    functions [:glCombinerInputNV, [ :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glCombinerOutputNV, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uchar, :uchar, :uchar ], :void],
              [:glCombinerParameterfNV, [ :uint, :float ], :void],
              [:glCombinerParameterfvNV, [ :uint, :pointer ], :void],
              [:glCombinerParameteriNV, [ :uint, :int ], :void],
              [:glCombinerParameterivNV, [ :uint, :pointer ], :void],
              [:glFinalCombinerInputNV, [ :uint, :uint, :uint, :uint ], :void],
              [:glGetCombinerInputParameterfvNV, [ :uint, :uint, :uint, :uint, :pointer ], :void],
              [:glGetCombinerInputParameterivNV, [ :uint, :uint, :uint, :uint, :pointer ], :void],
              [:glGetCombinerOutputParameterfvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetCombinerOutputParameterivNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetFinalCombinerInputParameterfvNV, [ :uint, :uint, :pointer ], :void],
              [:glGetFinalCombinerInputParameterivNV, [ :uint, :uint, :pointer ], :void]
  end
end

