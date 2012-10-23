module GL_ARB_texture_storage_multisample
  module RenderContext
    include GLExtension

    functions [:glTexStorage2DMultisample, [ :uint, :int, :uint, :int, :int, :uchar ], :void],
              [:glTexStorage3DMultisample, [ :uint, :int, :uint, :int, :int, :int, :uchar ], :void],
              [:glTextureStorage2DMultisampleEXT, [ :uint, :uint, :int, :uint, :int, :int, :uchar ], :void],
              [:glTextureStorage3DMultisampleEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :uchar ], :void]
  end
end

