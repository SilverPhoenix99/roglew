module GL_core_1_5
  module RenderContext
    include GLExtension

    functions [:glBeginQuery, [ :uint, :uint ], :void],
              [:glBindBuffer, [ :uint, :uint ], :void],
              [:glBufferData, [ :uint, :int64, :pointer, :uint ], :void],
              [:glBufferSubData, [ :uint, :int64, :int64, :pointer ], :void],
              [:glDeleteBuffers, [ :int, :pointer ], :void],
              [:glDeleteQueries, [ :int, :pointer ], :void],
              [:glEndQuery, [ :uint ], :void],
              [:glGenBuffers, [ :int, :pointer ], :void],
              [:glGenQueries, [ :int, :pointer ], :void],
              [:glGetBufferParameteriv, [ :uint, :uint, :pointer ], :void],
              [:glGetBufferPointerv, [ :uint, :uint, :pointer ], :void],
              [:glGetBufferSubData, [ :uint, :int64, :int64, :pointer ], :void],
              [:glGetQueryiv, [ :uint, :uint, :pointer ], :void],
              [:glGetQueryObjectiv, [ :uint, :uint, :pointer ], :void],
              [:glGetQueryObjectuiv, [ :uint, :uint, :pointer ], :void],
              [:glIsBuffer, [ :uint ], :uchar],
              [:glIsQuery, [ :uint ], :uchar],
              [:glMapBuffer, [ :uint, :uint ], :pointer],
              [:glUnmapBuffer, [ :uint ], :uchar]
  end
end