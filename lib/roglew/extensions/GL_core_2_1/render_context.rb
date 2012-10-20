module GL_core_2_1
  module RenderContext
    include GLExtension

    functions [:glUniformMatrix2x3fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix2x4fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3x2fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3x4fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4x2fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4x3fv, [ :int, :int, :uchar, :pointer ], :void]
  end
end