module Roglew
  module GL
    FIXED                            = 0x140C unless const_defined? :FIXED
    HIGH_FLOAT                       = 0x8DF2 unless const_defined? :HIGH_FLOAT
    HIGH_INT                         = 0x8DF5 unless const_defined? :HIGH_INT
    IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9 unless const_defined? :IMPLEMENTATION_COLOR_READ_FORMAT
    IMPLEMENTATION_COLOR_READ_TYPE   = 0x8B9A unless const_defined? :IMPLEMENTATION_COLOR_READ_TYPE
    LOW_FLOAT                        = 0x8DF0 unless const_defined? :LOW_FLOAT
    LOW_INT                          = 0x8DF3 unless const_defined? :LOW_INT
    MAX_FRAGMENT_UNIFORM_VECTORS     = 0x8DFD unless const_defined? :MAX_FRAGMENT_UNIFORM_VECTORS
    MAX_VARYING_VECTORS              = 0x8DFC unless const_defined? :MAX_VARYING_VECTORS
    MAX_VERTEX_UNIFORM_VECTORS       = 0x8DFB unless const_defined? :MAX_VERTEX_UNIFORM_VECTORS
    MEDIUM_FLOAT                     = 0x8DF1 unless const_defined? :MEDIUM_FLOAT
    MEDIUM_INT                       = 0x8DF4 unless const_defined? :MEDIUM_INT
    NUM_SHADER_BINARY_FORMATS        = 0x8DF9 unless const_defined? :NUM_SHADER_BINARY_FORMATS
    RGB565                           = 0x8D62 unless const_defined? :RGB565
    SHADER_BINARY_FORMATS            = 0x8DF8 unless const_defined? :SHADER_BINARY_FORMATS
    SHADER_COMPILER                  = 0x8DFA unless const_defined? :SHADER_COMPILER
  end
end

module GL_ARB_ES2_compatibility
  module RenderContext
    include Roglew::GLExtension

    functions [:glClearDepthf, [ :float ], :void],
              [:glDepthRangef, [ :float, :float ], :void],
              [:glGetShaderPrecisionFormat, [ :uint, :uint, :pointer, :pointer ], :void],
              [:glReleaseShaderCompiler, [  ], :void],
              [:glShaderBinary, [ :int, :pointer, :uint, :pointer, :int ], :void]
  end
end