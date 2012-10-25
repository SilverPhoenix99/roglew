module Roglew
  module GL
    COLOR_INDEX1_EXT               = 0x80E2
    COLOR_INDEX12_EXT              = 0x80E6
    COLOR_INDEX16_EXT              = 0x80E7
    COLOR_INDEX2_EXT               = 0x80E3
    COLOR_INDEX4_EXT               = 0x80E4
    COLOR_INDEX8_EXT               = 0x80E5
    COLOR_TABLE_ALPHA_SIZE_EXT     = 0x80DD
    COLOR_TABLE_BLUE_SIZE_EXT      = 0x80DC
    COLOR_TABLE_FORMAT_EXT         = 0x80D8
    COLOR_TABLE_GREEN_SIZE_EXT     = 0x80DB
    COLOR_TABLE_INTENSITY_SIZE_EXT = 0x80DF
    COLOR_TABLE_LUMINANCE_SIZE_EXT = 0x80DE
    COLOR_TABLE_RED_SIZE_EXT       = 0x80DA
    COLOR_TABLE_WIDTH_EXT          = 0x80D9
    PROXY_TEXTURE_1D               = 0x8063
    PROXY_TEXTURE_2D               = 0x8064
    PROXY_TEXTURE_CUBE_MAP_ARB     = 0x851B
    TEXTURE_1D                     = 0x0DE0
    TEXTURE_2D                     = 0x0DE1
    TEXTURE_CUBE_MAP_ARB           = 0x8513
    TEXTURE_INDEX_SIZE_EXT         = 0x80ED
  end
end

module GL_EXT_paletted_texture
  module RenderContext
    include GLExtension

    functions [:glColorTableEXT, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void],
              [:glGetColorTableEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetColorTableParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetColorTableParameterivEXT, [ :uint, :uint, :pointer ], :void]
  end
end

