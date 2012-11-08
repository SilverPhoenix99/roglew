module Roglew
  module GL
    MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE = 0x8520 unless const_defined? :MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE
    STORAGE_CACHED_APPLE                 = 0x85BE unless const_defined? :STORAGE_CACHED_APPLE
    STORAGE_CLIENT_APPLE                 = 0x85B4 unless const_defined? :STORAGE_CLIENT_APPLE
    STORAGE_SHARED_APPLE                 = 0x85BF unless const_defined? :STORAGE_SHARED_APPLE
    VERTEX_ARRAY_RANGE_APPLE             = 0x851D unless const_defined? :VERTEX_ARRAY_RANGE_APPLE
    VERTEX_ARRAY_RANGE_LENGTH_APPLE      = 0x851E unless const_defined? :VERTEX_ARRAY_RANGE_LENGTH_APPLE
    VERTEX_ARRAY_RANGE_POINTER_APPLE     = 0x8521 unless const_defined? :VERTEX_ARRAY_RANGE_POINTER_APPLE
    VERTEX_ARRAY_STORAGE_HINT_APPLE      = 0x851F unless const_defined? :VERTEX_ARRAY_STORAGE_HINT_APPLE
  end
end

module GL_APPLE_vertex_array_range
  module RenderContext
    include Roglew::GLExtension

    functions [:glFlushVertexArrayRangeAPPLE, [ :int, :pointer ], :void],
              [:glVertexArrayParameteriAPPLE, [ :uint, :int ], :void],
              [:glVertexArrayRangeAPPLE, [ :int, :pointer ], :void]
  end
end