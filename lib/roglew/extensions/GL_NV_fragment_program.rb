module Roglew
  module GL
    FRAGMENT_PROGRAM_BINDING_NV              = 0x8873
    FRAGMENT_PROGRAM_NV                      = 0x8870
    MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = 0x8868
    MAX_TEXTURE_COORDS_NV                    = 0x8871
    MAX_TEXTURE_IMAGE_UNITS_NV               = 0x8872
    PROGRAM_ERROR_STRING_NV                  = 0x8874
  end
end

module GL_NV_fragment_program
  module RenderContext
    include GLExtension

    functions [:glGetProgramNamedParameterdvNV, [ :uint, :int, :pointer, :pointer ], :void],
              [:glGetProgramNamedParameterfvNV, [ :uint, :int, :pointer, :pointer ], :void],
              [:glProgramNamedParameter4dNV, [ :uint, :int, :pointer, :double, :double, :double, :double ], :void],
              [:glProgramNamedParameter4dvNV, [ :uint, :int, :pointer, :double ], :void],
              [:glProgramNamedParameter4fNV, [ :uint, :int, :pointer, :float, :float, :float, :float ], :void],
              [:glProgramNamedParameter4fvNV, [ :uint, :int, :pointer, :float ], :void]
  end
end

