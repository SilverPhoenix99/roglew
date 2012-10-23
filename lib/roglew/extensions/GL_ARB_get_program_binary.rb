module Roglew
  module GL
    NUM_PROGRAM_BINARY_FORMATS      = 0x87FE
    PROGRAM_BINARY_FORMATS          = 0x87FF
    PROGRAM_BINARY_LENGTH           = 0x8741
    PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257
  end
end

module GL_ARB_get_program_binary
  module RenderContext
    include GLExtension

    functions [:glGetProgramBinary, [ :uint, :int, :pointer, :pointer, :pointer ], :void],
              [:glProgramBinary, [ :uint, :uint, :pointer, :int ], :void],
              [:glProgramParameteri, [ :uint, :uint, :int ], :void]
  end
end