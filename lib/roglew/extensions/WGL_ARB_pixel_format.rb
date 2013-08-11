module Roglew
  module WGL
    ACCELERATION_ARB            ||= 0x2003
    ACCUM_ALPHA_BITS_ARB        ||= 0x2021
    ACCUM_BITS_ARB              ||= 0x201D
    ACCUM_BLUE_BITS_ARB         ||= 0x2020
    ACCUM_GREEN_BITS_ARB        ||= 0x201F
    ACCUM_RED_BITS_ARB          ||= 0x201E
    ALPHA_BITS_ARB              ||= 0x201B
    ALPHA_SHIFT_ARB             ||= 0x201C
    AUX_BUFFERS_ARB             ||= 0x2024
    BLUE_BITS_ARB               ||= 0x2019
    BLUE_SHIFT_ARB              ||= 0x201A
    COLOR_BITS_ARB              ||= 0x2014
    DEPTH_BITS_ARB              ||= 0x2022
    DOUBLE_BUFFER_ARB           ||= 0x2011
    DRAW_TO_BITMAP_ARB          ||= 0x2002
    DRAW_TO_WINDOW_ARB          ||= 0x2001
    FULL_ACCELERATION_ARB       ||= 0x2027
    GENERIC_ACCELERATION_ARB    ||= 0x2026
    GREEN_BITS_ARB              ||= 0x2017
    GREEN_SHIFT_ARB             ||= 0x2018
    NEED_PALETTE_ARB            ||= 0x2004
    NEED_SYSTEM_PALETTE_ARB     ||= 0x2005
    NO_ACCELERATION_ARB         ||= 0x2025
    NUMBER_OVERLAYS_ARB         ||= 0x2008
    NUMBER_PIXEL_FORMATS_ARB    ||= 0x2000
    NUMBER_UNDERLAYS_ARB        ||= 0x2009
    PIXEL_TYPE_ARB              ||= 0x2013
    RED_BITS_ARB                ||= 0x2015
    RED_SHIFT_ARB               ||= 0x2016
    SHARE_ACCUM_ARB             ||= 0x200E
    SHARE_DEPTH_ARB             ||= 0x200C
    SHARE_STENCIL_ARB           ||= 0x200D
    STENCIL_BITS_ARB            ||= 0x2023
    STEREO_ARB                  ||= 0x2012
    SUPPORT_GDI_ARB             ||= 0x200F
    SUPPORT_OPENGL_ARB          ||= 0x2010
    SWAP_COPY_ARB               ||= 0x2029
    SWAP_EXCHANGE_ARB           ||= 0x2028
    SWAP_LAYER_BUFFERS_ARB      ||= 0x2006
    SWAP_METHOD_ARB             ||= 0x2007
    SWAP_UNDEFINED_ARB          ||= 0x202A
    TRANSPARENT_ALPHA_VALUE_ARB ||= 0x203A
    TRANSPARENT_ARB             ||= 0x200A
    TRANSPARENT_BLUE_VALUE_ARB  ||= 0x2039
    TRANSPARENT_GREEN_VALUE_ARB ||= 0x2038
    TRANSPARENT_INDEX_VALUE_ARB ||= 0x203B
    TRANSPARENT_RED_VALUE_ARB   ||= 0x2037
    TYPE_COLORINDEX_ARB         ||= 0x202C
    TYPE_RGBA_ARB               ||= 0x202B
  end
end

module WGL_ARB_pixel_format
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglChoosePixelFormatARB, [ :pointer, :pointer, :pointer, :uint, :pointer, :pointer ], :bool ],
      [:wglGetPixelFormatAttribfvARB, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ],
      [:wglGetPixelFormatAttribivARB, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ]
    ]
  end
end