module Roglew
  module GL
    TEXTURE_RANGE_LENGTH_APPLE  = 0x85B7 unless const_defined? :TEXTURE_RANGE_LENGTH_APPLE
    TEXTURE_RANGE_POINTER_APPLE = 0x85B8 unless const_defined? :TEXTURE_RANGE_POINTER_APPLE
    TEXTURE_STORAGE_HINT_APPLE  = 0x85BC unless const_defined? :TEXTURE_STORAGE_HINT_APPLE
    STORAGE_PRIVATE_APPLE       = 0x85BD unless const_defined? :STORAGE_PRIVATE_APPLE
    STORAGE_CACHED_APPLE        = 0x85BE unless const_defined? :STORAGE_CACHED_APPLE
    STORAGE_SHARED_APPLE        = 0x85BF unless const_defined? :STORAGE_SHARED_APPLE
  end
end

module GL_APPLE_texture_range
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetTexParameterPointervAPPLE, [ :uint, :uint, :pointer ], :void],
              [:glTextureRangeAPPLE, [ :uint, :int, :pointer ], :void]
  end
end