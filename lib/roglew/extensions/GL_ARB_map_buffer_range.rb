module Roglew
  module GL
    MAP_FLUSH_EXPLICIT_BIT    = 0x0010 unless const_defined? :MAP_FLUSH_EXPLICIT_BIT
    MAP_INVALIDATE_BUFFER_BIT = 0x0008 unless const_defined? :MAP_INVALIDATE_BUFFER_BIT
    MAP_INVALIDATE_RANGE_BIT  = 0x0004 unless const_defined? :MAP_INVALIDATE_RANGE_BIT
    MAP_READ_BIT              = 0x0001 unless const_defined? :MAP_READ_BIT
    MAP_UNSYNCHRONIZED_BIT    = 0x0020 unless const_defined? :MAP_UNSYNCHRONIZED_BIT
    MAP_WRITE_BIT             = 0x0002 unless const_defined? :MAP_WRITE_BIT
  end
end

module GL_ARB_map_buffer_range
  module RenderContext
    include Roglew::GLExtension

    functions [:glFlushMappedBufferRange, [ :uint, :int64, :int64 ], :void],
              [:glMapBufferRange, [ :uint, :int64, :int64, :uint ], :pointer]
  end
end