module Roglew
  module GL
    NUM_PROGRAM_BINARY_FORMATS      = 0x87FE unless const_defined? :NUM_PROGRAM_BINARY_FORMATS
    PROGRAM_BINARY_FORMATS          = 0x87FF unless const_defined? :PROGRAM_BINARY_FORMATS
    PROGRAM_BINARY_LENGTH           = 0x8741 unless const_defined? :PROGRAM_BINARY_LENGTH
    PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257 unless const_defined? :PROGRAM_BINARY_RETRIEVABLE_HINT
  end
end

module GL_ARB_get_program_binary
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetProgramBinary, [ :uint, :int, :pointer, :pointer, :pointer ], :void],
              [:glProgramBinary, [ :uint, :uint, :pointer, :int ], :void],
              [:glProgramParameteri, [ :uint, :uint, :int ], :void]
  end
end