module Roglew
  module GL
    MAX_TEXTURE_BUFFER_SIZE_EXT           ||= 0x8C2B
    TEXTURE_BINDING_BUFFER_EXT            ||= 0x8C2C
    TEXTURE_BUFFER_DATA_STORE_BINDING_EXT ||= 0x8C2D
    TEXTURE_BUFFER_EXT                    ||= 0x8C2A
    TEXTURE_BUFFER_FORMAT_EXT             ||= 0x8C2E
  end
end

module GL_EXT_texture_buffer_object
  module RenderContext
    include Roglew::GLExtension

    functions [:glTexBufferEXT, [ :uint, :uint, :uint ], :void]
  end
end

