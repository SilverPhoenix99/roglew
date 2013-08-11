module Roglew
  module WGL
    ACCELERATION_EXT         ||= 0x2003
    ACCUM_ALPHA_BITS_EXT     ||= 0x2021
    ACCUM_BITS_EXT           ||= 0x201D
    ACCUM_BLUE_BITS_EXT      ||= 0x2020
    ACCUM_GREEN_BITS_EXT     ||= 0x201F
    ACCUM_RED_BITS_EXT       ||= 0x201E
    ALPHA_BITS_EXT           ||= 0x201B
    ALPHA_SHIFT_EXT          ||= 0x201C
    AUX_BUFFERS_EXT          ||= 0x2024
    BLUE_BITS_EXT            ||= 0x2019
    BLUE_SHIFT_EXT           ||= 0x201A
    COLOR_BITS_EXT           ||= 0x2014
    DEPTH_BITS_EXT           ||= 0x2022
    DOUBLE_BUFFER_EXT        ||= 0x2011
    DRAW_TO_BITMAP_EXT       ||= 0x2002
    DRAW_TO_WINDOW_EXT       ||= 0x2001
    FULL_ACCELERATION_EXT    ||= 0x2027
    GENERIC_ACCELERATION_EXT ||= 0x2026
    GREEN_BITS_EXT           ||= 0x2017
    GREEN_SHIFT_EXT          ||= 0x2018
    NEED_PALETTE_EXT         ||= 0x2004
    NEED_SYSTEM_PALETTE_EXT  ||= 0x2005
    NO_ACCELERATION_EXT      ||= 0x2025
    NUMBER_OVERLAYS_EXT      ||= 0x2008
    NUMBER_PIXEL_FORMATS_EXT ||= 0x2000
    NUMBER_UNDERLAYS_EXT     ||= 0x2009
    PIXEL_TYPE_EXT           ||= 0x2013
    RED_BITS_EXT             ||= 0x2015
    RED_SHIFT_EXT            ||= 0x2016
    SHARE_ACCUM_EXT          ||= 0x200E
    SHARE_DEPTH_EXT          ||= 0x200C
    SHARE_STENCIL_EXT        ||= 0x200D
    STENCIL_BITS_EXT         ||= 0x2023
    STEREO_EXT               ||= 0x2012
    SUPPORT_GDI_EXT          ||= 0x200F
    SUPPORT_OPENGL_EXT       ||= 0x2010
    SWAP_COPY_EXT            ||= 0x2029
    SWAP_EXCHANGE_EXT        ||= 0x2028
    SWAP_LAYER_BUFFERS_EXT   ||= 0x2006
    SWAP_METHOD_EXT          ||= 0x2007
    SWAP_UNDEFINED_EXT       ||= 0x202A
    TRANSPARENT_EXT          ||= 0x200A
    TRANSPARENT_VALUE_EXT    ||= 0x200B
    TYPE_COLORINDEX_EXT      ||= 0x202C
    TYPE_RGBA_EXT            ||= 0x202B
  end
end

module WGL_EXT_pixel_format
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglChoosePixelFormatEXT, [ :pointer, :pointer, :pointer, :uint, :pointer, :pointer ], :bool ],
      [:wglGetPixelFormatAttribfvEXT, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ],
      [:wglGetPixelFormatAttribivEXT, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ]
    ]
  end
end