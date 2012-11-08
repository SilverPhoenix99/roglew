module Roglew
  module GL
    BUFFER_FLUSHING_UNMAP_APPLE    = 0x8A13 unless const_defined? :BUFFER_FLUSHING_UNMAP_APPLE
    BUFFER_SERIALIZED_MODIFY_APPLE = 0x8A12 unless const_defined? :BUFFER_SERIALIZED_MODIFY_APPLE
  end
end

module GL_APPLE_flush_buffer_range
  module RenderContext
    include Roglew::GLExtension

    functions [:glBufferParameteriAPPLE, [ :uint, :uint, :int ], :void],
              [:glFlushMappedBufferRangeAPPLE, [ :uint, :int64, :int64 ], :void]
  end
end