module Roglew
  module GL
    TEXTURE_1D_BINDING_EXT = 0x8068
    TEXTURE_2D_BINDING_EXT = 0x8069
    TEXTURE_3D_BINDING_EXT = 0x806A
    TEXTURE_PRIORITY_EXT   = 0x8066
    TEXTURE_RESIDENT_EXT   = 0x8067
  end
end

module GL_EXT_texture_object
  module RenderContext
    include GLExtension

    functions [:glAreTexturesResidentEXT, [ :int, :pointer, :pointer ], :uchar],
              [:glBindTextureEXT, [ :uint, :uint ], :void],
              [:glDeleteTexturesEXT, [ :int, :pointer ], :void],
              [:glGenTexturesEXT, [ :int, :pointer ], :void],
              [:glIsTextureEXT, [ :uint ], :uchar],
              [:glPrioritizeTexturesEXT, [ :int, :pointer, :pointer ], :void]
  end
end

