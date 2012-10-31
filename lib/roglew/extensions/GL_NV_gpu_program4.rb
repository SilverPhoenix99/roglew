module Roglew
  module GL
    MAX_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8908
    MAX_PROGRAM_GENERIC_ATTRIBS_NV   = 0x8DA5
    MAX_PROGRAM_GENERIC_RESULTS_NV   = 0x8DA6
    MAX_PROGRAM_RESULT_COMPONENTS_NV = 0x8909
    MAX_PROGRAM_TEXEL_OFFSET_NV      = 0x8905
    MIN_PROGRAM_TEXEL_OFFSET_NV      = 0x8904
    PROGRAM_ATTRIB_COMPONENTS_NV     = 0x8906
    PROGRAM_RESULT_COMPONENTS_NV     = 0x8907
  end
end

module GL_NV_gpu_program4
  module RenderContext
    include GLExtension

    functions [:glProgramEnvParameterI4iNV, [ :uint, :uint, :int, :int, :int, :int ], :void],
              [:glProgramEnvParameterI4ivNV, [ :uint, :uint, :pointer ], :void],
              [:glProgramEnvParameterI4uiNV, [ :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glProgramEnvParameterI4uivNV, [ :uint, :uint, :pointer ], :void],
              [:glProgramEnvParametersI4ivNV, [ :uint, :uint, :int, :pointer ], :void],
              [:glProgramEnvParametersI4uivNV, [ :uint, :uint, :int, :pointer ], :void],
              [:glProgramLocalParameterI4iNV, [ :uint, :uint, :int, :int, :int, :int ], :void],
              [:glProgramLocalParameterI4ivNV, [ :uint, :uint, :pointer ], :void],
              [:glProgramLocalParameterI4uiNV, [ :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glProgramLocalParameterI4uivNV, [ :uint, :uint, :pointer ], :void],
              [:glProgramLocalParametersI4ivNV, [ :uint, :uint, :int, :pointer ], :void],
              [:glProgramLocalParametersI4uivNV, [ :uint, :uint, :int, :pointer ], :void]
  end
end

