module Roglew
  module GLX
    BIND_TO_TEXTURE_RGB_ATI         ||= 0x9800
    BIND_TO_TEXTURE_RGBA_ATI        ||= 0x9801
    TEXTURE_FORMAT_ATI              ||= 0x9802
    TEXTURE_TARGET_ATI              ||= 0x9803
    MIPMAP_TEXTURE_ATI              ||= 0x9804
    TEXTURE_RGB_ATI                 ||= 0x9805
    TEXTURE_RGBA_ATI                ||= 0x9806
    NO_TEXTURE_ATI                  ||= 0x9807
    TEXTURE_CUBE_MAP_ATI            ||= 0x9808
    TEXTURE_1D_ATI                  ||= 0x9809
    TEXTURE_2D_ATI                  ||= 0x980A
    MIPMAP_LEVEL_ATI                ||= 0x980B
    CUBE_MAP_FACE_ATI               ||= 0x980C
    TEXTURE_CUBE_MAP_POSITIVE_X_ATI ||= 0x980D
    TEXTURE_CUBE_MAP_NEGATIVE_X_ATI ||= 0x980E
    TEXTURE_CUBE_MAP_POSITIVE_Y_ATI ||= 0x980F
    TEXTURE_CUBE_MAP_NEGATIVE_Y_ATI ||= 0x9810
    TEXTURE_CUBE_MAP_POSITIVE_Z_ATI ||= 0x9811
    TEXTURE_CUBE_MAP_NEGATIVE_Z_ATI ||= 0x9812
    FRONT_LEFT_ATI                  ||= 0x9813
    FRONT_RIGHT_ATI                 ||= 0x9814
    BACK_LEFT_ATI                   ||= 0x9815
    BACK_RIGHT_ATI                  ||= 0x9816
    AUX0_ATI                        ||= 0x9817
    AUX1_ATI                        ||= 0x9818
    AUX2_ATI                        ||= 0x9819
    AUX3_ATI                        ||= 0x981A
    AUX4_ATI                        ||= 0x981B
    AUX5_ATI                        ||= 0x981C
    AUX6_ATI                        ||= 0x981D
    AUX7_ATI                        ||= 0x981E
    AUX8_ATI                        ||= 0x981F
    AUX9_ATI                        ||= 0x9820
    BIND_TO_TEXTURE_LUMINANCE_ATI   ||= 0x9821
    BIND_TO_TEXTURE_INTENSITY_ATI   ||= 0x9822
  end
end

module GLX_ATI_render_texture
  module RenderHandle
    include Roglew::RenderHandleExtension


    functions [
      #void glXBindTexImageATI(Display *dpy, GLXPbuffer pbuf, int buffer)
      [:glXBindTexImageATI, [:pointer, :int, :int], :void],

      #void glXBindTexImageATI(Display *dpy, GLXDrawable draw, const int *attrib_list)
      [:glXBindTexImageATI, [:pointer, :int, :pointer], :void],

      #void glXReleaseTexImageATI(Display *dpy, GLXPbuffer pbuf, int buffer)
      [:glXReleaseTexImageATI, [:pointer, :int, :int], :void]
    ]
  end
end