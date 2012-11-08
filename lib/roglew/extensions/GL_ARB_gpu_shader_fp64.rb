module Roglew
  module GL
    DOUBLE_MAT2   = 0x8F46 unless const_defined? :DOUBLE_MAT2
    DOUBLE_MAT2x3 = 0x8F49 unless const_defined? :DOUBLE_MAT2x3
    DOUBLE_MAT2x4 = 0x8F4A unless const_defined? :DOUBLE_MAT2x4
    DOUBLE_MAT3   = 0x8F47 unless const_defined? :DOUBLE_MAT3
    DOUBLE_MAT3x2 = 0x8F4B unless const_defined? :DOUBLE_MAT3x2
    DOUBLE_MAT3x4 = 0x8F4C unless const_defined? :DOUBLE_MAT3x4
    DOUBLE_MAT4   = 0x8F48 unless const_defined? :DOUBLE_MAT4
    DOUBLE_MAT4x2 = 0x8F4D unless const_defined? :DOUBLE_MAT4x2
    DOUBLE_MAT4x3 = 0x8F4E unless const_defined? :DOUBLE_MAT4x3
    DOUBLE_VEC2   = 0x8FFC unless const_defined? :DOUBLE_VEC2
    DOUBLE_VEC3   = 0x8FFD unless const_defined? :DOUBLE_VEC3
    DOUBLE_VEC4   = 0x8FFE unless const_defined? :DOUBLE_VEC4
  end
end

module GL_ARB_gpu_shader_fp64
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetUniformdv, [ :uint, :int, :pointer ], :void],
              [:glUniform1d, [ :int, :double ], :void],
              [:glUniform1dv, [ :int, :int, :pointer ], :void],
              [:glUniform2d, [ :int, :double, :double ], :void],
              [:glUniform2dv, [ :int, :int, :pointer ], :void],
              [:glUniform3d, [ :int, :double, :double, :double ], :void],
              [:glUniform3dv, [ :int, :int, :pointer ], :void],
              [:glUniform4d, [ :int, :double, :double, :double, :double ], :void],
              [:glUniform4dv, [ :int, :int, :pointer ], :void],
              [:glUniformMatrix2dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix2x3dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix2x4dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3x2dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3x4dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4x2dv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4x3dv, [ :int, :int, :uchar, :pointer ], :void]
  end
end