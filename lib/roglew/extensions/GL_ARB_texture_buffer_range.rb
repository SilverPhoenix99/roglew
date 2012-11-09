module Roglew
  module GL
    TEXTURE_BUFFER_OFFSET           ||= 0x919D
    TEXTURE_BUFFER_OFFSET_ALIGNMENT ||= 0x919F
    TEXTURE_BUFFER_SIZE             ||= 0x919E
  end
end

module GL_ARB_texture_buffer_range
  module RenderContext
    include Roglew::GLExtension

    functions [:glTexBufferRange, [ :uint, :uint, :uint, :int64, :int64 ], :void],
              [:glTextureBufferRangeEXT, [ :uint, :uint, :uint, :uint, :int64, :int64 ], :void]
  end
end

