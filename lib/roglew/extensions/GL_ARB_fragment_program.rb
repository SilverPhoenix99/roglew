module Roglew
  module GL
    FRAGMENT_PROGRAM_ARB                    = 0x8804 unless const_defined? :FRAGMENT_PROGRAM_ARB
    MAX_PROGRAM_ALU_INSTRUCTIONS_ARB        = 0x880B unless const_defined? :MAX_PROGRAM_ALU_INSTRUCTIONS_ARB
    MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x880E unless const_defined? :MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
    MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x8810 unless const_defined? :MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
    MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x880F unless const_defined? :MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
    MAX_PROGRAM_TEX_INDIRECTIONS_ARB        = 0x880D unless const_defined? :MAX_PROGRAM_TEX_INDIRECTIONS_ARB
    MAX_PROGRAM_TEX_INSTRUCTIONS_ARB        = 0x880C unless const_defined? :MAX_PROGRAM_TEX_INSTRUCTIONS_ARB
    MAX_TEXTURE_COORDS_ARB                  = 0x8871 unless const_defined? :MAX_TEXTURE_COORDS_ARB
    MAX_TEXTURE_IMAGE_UNITS_ARB             = 0x8872 unless const_defined? :MAX_TEXTURE_IMAGE_UNITS_ARB
    PROGRAM_ALU_INSTRUCTIONS_ARB            = 0x8805 unless const_defined? :PROGRAM_ALU_INSTRUCTIONS_ARB
    PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB     = 0x8808 unless const_defined? :PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
    PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB     = 0x880A unless const_defined? :PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
    PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB     = 0x8809 unless const_defined? :PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
    PROGRAM_TEX_INDIRECTIONS_ARB            = 0x8807 unless const_defined? :PROGRAM_TEX_INDIRECTIONS_ARB
    PROGRAM_TEX_INSTRUCTIONS_ARB            = 0x8806 unless const_defined? :PROGRAM_TEX_INSTRUCTIONS_ARB
  end
end