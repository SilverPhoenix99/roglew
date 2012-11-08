module Roglew
  module GL
    FRACTIONAL_EVEN                                    = 0x8E7C unless const_defined? :FRACTIONAL_EVEN
    FRACTIONAL_ODD                                     = 0x8E7B unless const_defined? :FRACTIONAL_ODD
    ISOLINES                                           = 0x8E7A unless const_defined? :ISOLINES
    MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS       = 0x8E1E unless const_defined? :MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
    MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS    = 0x8E1F unless const_defined? :MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
    MAX_PATCH_VERTICES                                 = 0x8E7D unless const_defined? :MAX_PATCH_VERTICES
    MAX_TESS_CONTROL_INPUT_COMPONENTS                  = 0x886C unless const_defined? :MAX_TESS_CONTROL_INPUT_COMPONENTS
    MAX_TESS_CONTROL_OUTPUT_COMPONENTS                 = 0x8E83 unless const_defined? :MAX_TESS_CONTROL_OUTPUT_COMPONENTS
    MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS               = 0x8E81 unless const_defined? :MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
    MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS           = 0x8E85 unless const_defined? :MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
    MAX_TESS_CONTROL_UNIFORM_BLOCKS                    = 0x8E89 unless const_defined? :MAX_TESS_CONTROL_UNIFORM_BLOCKS
    MAX_TESS_CONTROL_UNIFORM_COMPONENTS                = 0x8E7F unless const_defined? :MAX_TESS_CONTROL_UNIFORM_COMPONENTS
    MAX_TESS_EVALUATION_INPUT_COMPONENTS               = 0x886D unless const_defined? :MAX_TESS_EVALUATION_INPUT_COMPONENTS
    MAX_TESS_EVALUATION_OUTPUT_COMPONENTS              = 0x8E86 unless const_defined? :MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
    MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS            = 0x8E82 unless const_defined? :MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
    MAX_TESS_EVALUATION_UNIFORM_BLOCKS                 = 0x8E8A unless const_defined? :MAX_TESS_EVALUATION_UNIFORM_BLOCKS
    MAX_TESS_EVALUATION_UNIFORM_COMPONENTS             = 0x8E80 unless const_defined? :MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
    MAX_TESS_GEN_LEVEL                                 = 0x8E7E unless const_defined? :MAX_TESS_GEN_LEVEL
    MAX_TESS_PATCH_COMPONENTS                          = 0x8E84 unless const_defined? :MAX_TESS_PATCH_COMPONENTS
    PATCH_DEFAULT_INNER_LEVEL                          = 0x8E73 unless const_defined? :PATCH_DEFAULT_INNER_LEVEL
    PATCH_DEFAULT_OUTER_LEVEL                          = 0x8E74 unless const_defined? :PATCH_DEFAULT_OUTER_LEVEL
    PATCH_VERTICES                                     = 0x8E72 unless const_defined? :PATCH_VERTICES
    PATCHES                                            = 0xE unless const_defined? :PATCHES
    TESS_CONTROL_OUTPUT_VERTICES                       = 0x8E75 unless const_defined? :TESS_CONTROL_OUTPUT_VERTICES
    TESS_CONTROL_SHADER                                = 0x8E88 unless const_defined? :TESS_CONTROL_SHADER
    TESS_EVALUATION_SHADER                             = 0x8E87 unless const_defined? :TESS_EVALUATION_SHADER
    TESS_GEN_MODE                                      = 0x8E76 unless const_defined? :TESS_GEN_MODE
    TESS_GEN_POINT_MODE                                = 0x8E79 unless const_defined? :TESS_GEN_POINT_MODE
    TESS_GEN_SPACING                                   = 0x8E77 unless const_defined? :TESS_GEN_SPACING
    TESS_GEN_VERTEX_ORDER                              = 0x8E78 unless const_defined? :TESS_GEN_VERTEX_ORDER
    UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER    = 0x84F0 unless const_defined? :UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
    UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1 unless const_defined? :UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
  end
end

module GL_ARB_tessellation_shader
  module RenderContext
    include Roglew::GLExtension

    functions [:glPatchParameterfv, [ :uint, :pointer ], :void],
              [:glPatchParameteri, [ :uint, :int ], :void]
  end
end

