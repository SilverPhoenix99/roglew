module Roglew
  module GL
    VERTEX_ARRAY_BINDING_APPLE = 0x85B5
  end
end

module GL_APPLE_vertex_array_object
  module RenderContext
    include GLExtension

    functions [:glBindVertexArrayAPPLE, [ :uint ], :void],
              [:glDeleteVertexArraysAPPLE, [ :int, :pointer ], :void],
              [:glGenVertexArraysAPPLE, [ :int, :pointer ], :void],
              [:glIsVertexArrayAPPLE, [ :uint ], :uchar]
  end
end