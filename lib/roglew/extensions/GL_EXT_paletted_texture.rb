module Roglew
  module GL
    COLOR_INDEX1_EXT               = 0x80E2 unless const_defined? :COLOR_INDEX1_EXT
    COLOR_INDEX12_EXT              = 0x80E6 unless const_defined? :COLOR_INDEX12_EXT
    COLOR_INDEX16_EXT              = 0x80E7 unless const_defined? :COLOR_INDEX16_EXT
    COLOR_INDEX2_EXT               = 0x80E3 unless const_defined? :COLOR_INDEX2_EXT
    COLOR_INDEX4_EXT               = 0x80E4 unless const_defined? :COLOR_INDEX4_EXT
    COLOR_INDEX8_EXT               = 0x80E5 unless const_defined? :COLOR_INDEX8_EXT
    COLOR_TABLE_ALPHA_SIZE_EXT     = 0x80DD unless const_defined? :COLOR_TABLE_ALPHA_SIZE_EXT
    COLOR_TABLE_BLUE_SIZE_EXT      = 0x80DC unless const_defined? :COLOR_TABLE_BLUE_SIZE_EXT
    COLOR_TABLE_FORMAT_EXT         = 0x80D8 unless const_defined? :COLOR_TABLE_FORMAT_EXT
    COLOR_TABLE_GREEN_SIZE_EXT     = 0x80DB unless const_defined? :COLOR_TABLE_GREEN_SIZE_EXT
    COLOR_TABLE_INTENSITY_SIZE_EXT = 0x80DF unless const_defined? :COLOR_TABLE_INTENSITY_SIZE_EXT
    COLOR_TABLE_LUMINANCE_SIZE_EXT = 0x80DE unless const_defined? :COLOR_TABLE_LUMINANCE_SIZE_EXT
    COLOR_TABLE_RED_SIZE_EXT       = 0x80DA unless const_defined? :COLOR_TABLE_RED_SIZE_EXT
    COLOR_TABLE_WIDTH_EXT          = 0x80D9 unless const_defined? :COLOR_TABLE_WIDTH_EXT
    PROXY_TEXTURE_1D               = 0x8063 unless const_defined? :PROXY_TEXTURE_1D
    PROXY_TEXTURE_2D               = 0x8064 unless const_defined? :PROXY_TEXTURE_2D
    PROXY_TEXTURE_CUBE_MAP_ARB     = 0x851B unless const_defined? :PROXY_TEXTURE_CUBE_MAP_ARB
    TEXTURE_1D                     = 0x0DE0 unless const_defined? :TEXTURE_1D
    TEXTURE_2D                     = 0x0DE1 unless const_defined? :TEXTURE_2D
    TEXTURE_CUBE_MAP_ARB           = 0x8513 unless const_defined? :TEXTURE_CUBE_MAP_ARB
    TEXTURE_INDEX_SIZE_EXT         = 0x80ED unless const_defined? :TEXTURE_INDEX_SIZE_EXT
  end
end

module GL_EXT_paletted_texture
  module RenderContext
    include Roglew::GLExtension

    functions [:glColorTableEXT, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void],
              [:glGetColorTableEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetColorTableParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetColorTableParameterivEXT, [ :uint, :uint, :pointer ], :void]
  end
end

