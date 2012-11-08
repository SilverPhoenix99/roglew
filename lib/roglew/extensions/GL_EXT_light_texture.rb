module Roglew
  module GL
    ATTENUATION_EXT                = 0x834D unless const_defined? :ATTENUATION_EXT
    FRAGMENT_COLOR_EXT             = 0x834C unless const_defined? :FRAGMENT_COLOR_EXT
    FRAGMENT_MATERIAL_EXT          = 0x8349 unless const_defined? :FRAGMENT_MATERIAL_EXT
    FRAGMENT_NORMAL_EXT            = 0x834A unless const_defined? :FRAGMENT_NORMAL_EXT
    SHADOW_ATTENUATION_EXT         = 0x834E unless const_defined? :SHADOW_ATTENUATION_EXT
    TEXTURE_APPLICATION_MODE_EXT   = 0x834F unless const_defined? :TEXTURE_APPLICATION_MODE_EXT
    TEXTURE_LIGHT_EXT              = 0x8350 unless const_defined? :TEXTURE_LIGHT_EXT
    TEXTURE_MATERIAL_FACE_EXT      = 0x8351 unless const_defined? :TEXTURE_MATERIAL_FACE_EXT
    TEXTURE_MATERIAL_PARAMETER_EXT = 0x8352 unless const_defined? :TEXTURE_MATERIAL_PARAMETER_EXT
  end
end

module GL_EXT_light_texture
  module RenderContext
    include Roglew::GLExtension

    functions [:glApplyTextureEXT, [ :uint ], :void],
              [:glTextureLightEXT, [ :uint ], :void],
              [:glTextureMaterialEXT, [ :uint, :uint ], :void]
  end
end

