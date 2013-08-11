module Roglew
  module GL
    MAX_3D_TEXTURE_SIZE_EXT ||= 0x8073
    PACK_IMAGE_HEIGHT_EXT   ||= 0x806C
    PACK_SKIP_IMAGES_EXT    ||= 0x806B
    PROXY_TEXTURE_3D_EXT    ||= 0x8070
    TEXTURE_3D_EXT          ||= 0x806F
    TEXTURE_DEPTH_EXT       ||= 0x8071
    TEXTURE_WRAP_R_EXT      ||= 0x8072
    UNPACK_IMAGE_HEIGHT_EXT ||= 0x806E
    UNPACK_SKIP_IMAGES_EXT  ||= 0x806D
  end
end

module GL_EXT_texture3D
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glTexImage3DEXT, [ :uint, :int, :uint, :int, :int, :int, :int, :uint, :uint, :pointer ], :void]
    ]
  end
end

