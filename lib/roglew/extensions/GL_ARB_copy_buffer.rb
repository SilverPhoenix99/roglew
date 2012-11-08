module Roglew
  module GL
    COPY_READ_BUFFER  = 0x8F36 unless const_defined? :COPY_READ_BUFFER
    COPY_WRITE_BUFFER = 0x8F37 unless const_defined? :COPY_WRITE_BUFFER
  end
end

module GL_ARB_copy_buffer
  module RenderContext
    include Roglew::GLExtension

    functions [:glCopyBufferSubData, [ :uint, :uint, :int64, :int64, :int64 ], :void]
  end
end