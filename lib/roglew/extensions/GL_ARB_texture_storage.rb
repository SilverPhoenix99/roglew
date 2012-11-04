module Roglew
  module GL
    TEXTURE_IMMUTABLE_FORMAT = 0x912F
  end
end

module GL_ARB_texture_storage
  module RenderContext
    include Roglew::GLExtension

    functions [:glTexStorage1D, [ :uint, :int, :uint, :int ], :void],
              [:glTexStorage2D, [ :uint, :int, :uint, :int, :int ], :void],
              [:glTexStorage3D, [ :uint, :int, :uint, :int, :int, :int ], :void],
              [:glTextureStorage1DEXT, [ :uint, :uint, :int, :uint, :int ], :void],
              [:glTextureStorage2DEXT, [ :uint, :uint, :int, :uint, :int, :int ], :void],
              [:glTextureStorage3DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int ], :void]
  end
end

