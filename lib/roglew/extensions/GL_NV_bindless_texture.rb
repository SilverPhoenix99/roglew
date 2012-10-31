module GL_NV_bindless_texture
  module RenderContext
    include GLExtension

    functions [:glGetImageHandleNV, [ :uint, :int, :uchar, :int, :uint ], :uint64],
              [:glGetTextureHandleNV, [ :uint ], :uint64],
              [:glGetTextureSamplerHandleNV, [ :uint, :uint ], :uint64],
              [:glIsImageHandleResidentNV, [ :uint64 ], :uchar],
              [:glIsTextureHandleResidentNV, [ :uint64 ], :uchar],
              [:glMakeImageHandleNonResidentNV, [ :uint64 ], :void],
              [:glMakeImageHandleResidentNV, [ :uint64, :uint ], :void],
              [:glMakeTextureHandleNonResidentNV, [ :uint64 ], :void],
              [:glMakeTextureHandleResidentNV, [ :uint64 ], :void],
              [:glProgramUniformHandleui64NV, [ :uint, :int, :uint64 ], :void],
              [:glProgramUniformHandleui64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glUniformHandleui64NV, [ :int, :uint64 ], :void],
              [:glUniformHandleui64vNV, [ :int, :int, :pointer ], :void]
  end
end