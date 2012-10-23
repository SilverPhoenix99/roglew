module Roglew
  module GL
    VERTEX_ARRAY_BINDING = 0x85B5
  end
end

module GL_ARB_vertex_array_object
  module RenderContext
    include GLExtension

    functions [:glBindVertexArray, [ :uint ], :void],
              [:glDeleteVertexArrays, [ :int, :pointer ], :void],
              [:glGenVertexArrays, [ :int, :pointer ], :void],
              [:glIsVertexArray, [ :uint ], :uchar]
  end
end

