module Roglew
  module GL
    MAX_TEXTURE_BUFFER_SIZE_ARB           = 0x8C2B unless const_defined? :MAX_TEXTURE_BUFFER_SIZE_ARB
    TEXTURE_BINDING_BUFFER_ARB            = 0x8C2C unless const_defined? :TEXTURE_BINDING_BUFFER_ARB
    TEXTURE_BUFFER_ARB                    = 0x8C2A unless const_defined? :TEXTURE_BUFFER_ARB
    TEXTURE_BUFFER_DATA_STORE_BINDING_ARB = 0x8C2D unless const_defined? :TEXTURE_BUFFER_DATA_STORE_BINDING_ARB
    TEXTURE_BUFFER_FORMAT_ARB             = 0x8C2E unless const_defined? :TEXTURE_BUFFER_FORMAT_ARB
  end
end

module GL_ARB_texture_buffer_object
  module RenderContext
    include Roglew::GLExtension

    functions [:glTexBufferARB, [ :uint, :uint, :uint ], :void]
  end
end

