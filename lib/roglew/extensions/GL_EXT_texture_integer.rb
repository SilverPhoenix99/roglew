module Roglew
  module GL
    ALPHA_INTEGER_EXT           = 0x8D97
    ALPHA16I_EXT                = 0x8D8A
    ALPHA16UI_EXT               = 0x8D78
    ALPHA32I_EXT                = 0x8D84
    ALPHA32UI_EXT               = 0x8D72
    ALPHA8I_EXT                 = 0x8D90
    ALPHA8UI_EXT                = 0x8D7E
    BGR_INTEGER_EXT             = 0x8D9A
    BGRA_INTEGER_EXT            = 0x8D9B
    BLUE_INTEGER_EXT            = 0x8D96
    GREEN_INTEGER_EXT           = 0x8D95
    INTENSITY16I_EXT            = 0x8D8B
    INTENSITY16UI_EXT           = 0x8D79
    INTENSITY32I_EXT            = 0x8D85
    INTENSITY32UI_EXT           = 0x8D73
    INTENSITY8I_EXT             = 0x8D91
    INTENSITY8UI_EXT            = 0x8D7F
    LUMINANCE_ALPHA_INTEGER_EXT = 0x8D9D
    LUMINANCE_ALPHA16I_EXT      = 0x8D8D
    LUMINANCE_ALPHA16UI_EXT     = 0x8D7B
    LUMINANCE_ALPHA32I_EXT      = 0x8D87
    LUMINANCE_ALPHA32UI_EXT     = 0x8D75
    LUMINANCE_ALPHA8I_EXT       = 0x8D93
    LUMINANCE_ALPHA8UI_EXT      = 0x8D81
    LUMINANCE_INTEGER_EXT       = 0x8D9C
    LUMINANCE16I_EXT            = 0x8D8C
    LUMINANCE16UI_EXT           = 0x8D7A
    LUMINANCE32I_EXT            = 0x8D86
    LUMINANCE32UI_EXT           = 0x8D74
    LUMINANCE8I_EXT             = 0x8D92
    LUMINANCE8UI_EXT            = 0x8D80
    RED_INTEGER_EXT             = 0x8D94
    RGB_INTEGER_EXT             = 0x8D98
    RGB16I_EXT                  = 0x8D89
    RGB16UI_EXT                 = 0x8D77
    RGB32I_EXT                  = 0x8D83
    RGB32UI_EXT                 = 0x8D71
    RGB8I_EXT                   = 0x8D8F
    RGB8UI_EXT                  = 0x8D7D
    RGBA_INTEGER_EXT            = 0x8D99
    RGBA_INTEGER_MODE_EXT       = 0x8D9E
    RGBA16I_EXT                 = 0x8D88
    RGBA16UI_EXT                = 0x8D76
    RGBA32I_EXT                 = 0x8D82
    RGBA32UI_EXT                = 0x8D70
    RGBA8I_EXT                  = 0x8D8E
    RGBA8UI_EXT                 = 0x8D7C
  end
end

module GL_EXT_texture_integer
  module RenderContext
    include GLExtension

    functions [:glClearColorIiEXT, [ :int, :int, :int, :int ], :void],
              [:glClearColorIuiEXT, [ :uint, :uint, :uint, :uint ], :void],
              [:glGetTexParameterIivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetTexParameterIuivEXT, [ :uint, :uint, :pointer ], :void],
              [:glTexParameterIivEXT, [ :uint, :uint, :pointer ], :void],
              [:glTexParameterIuivEXT, [ :uint, :uint, :pointer ], :void]
  end
end

