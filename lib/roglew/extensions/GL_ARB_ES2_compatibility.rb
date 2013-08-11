module Roglew
  module GL
    FIXED                            ||= 0x140C
    HIGH_FLOAT                       ||= 0x8DF2
    HIGH_INT                         ||= 0x8DF5
    IMPLEMENTATION_COLOR_READ_FORMAT ||= 0x8B9
    IMPLEMENTATION_COLOR_READ_TYPE   ||= 0x8B9A
    LOW_FLOAT                        ||= 0x8DF0
    LOW_INT                          ||= 0x8DF3
    MAX_FRAGMENT_UNIFORM_VECTORS     ||= 0x8DFD
    MAX_VARYING_VECTORS              ||= 0x8DFC
    MAX_VERTEX_UNIFORM_VECTORS       ||= 0x8DFB
    MEDIUM_FLOAT                     ||= 0x8DF1
    MEDIUM_INT                       ||= 0x8DF4
    NUM_SHADER_BINARY_FORMATS        ||= 0x8DF9
    RGB565                           ||= 0x8D62
    SHADER_BINARY_FORMATS            ||= 0x8DF8
    SHADER_COMPILER                  ||= 0x8DFA
  end
end

module GL_ARB_ES2_compatibility
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glClearDepthf, [ :float ], :void],
        [:glDepthRangef, [ :float, :float ], :void],
        [:glGetShaderPrecisionFormat, [ :uint, :uint, :pointer, :pointer ], :void],
        [:glReleaseShaderCompiler, [  ], :void],
        [:glShaderBinary, [ :int, :pointer, :uint, :pointer, :int ], :void]
    ]
  end
end