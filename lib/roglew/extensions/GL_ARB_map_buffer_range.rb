module Roglew
  module GL
    MAP_FLUSH_EXPLICIT_BIT    = 0x0010
    MAP_INVALIDATE_BUFFER_BIT = 0x0008
    MAP_INVALIDATE_RANGE_BIT  = 0x0004
    MAP_READ_BIT              = 0x0001
    MAP_UNSYNCHRONIZED_BIT    = 0x0020
    MAP_WRITE_BIT             = 0x0002
  end
end

module GL_ARB_map_buffer_range
  module RenderContext
    include Roglew::GLExtension

    functions [:glFlushMappedBufferRange, [ :uint, :int64, :int64 ], :void],
              [:glMapBufferRange, [ :uint, :int64, :int64, :uint ], :pointer]
  end
end