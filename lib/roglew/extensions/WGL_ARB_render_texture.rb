module Roglew
  module WGL
    AUX0_ARB                        ||= 0x2087
    AUX1_ARB                        ||= 0x2088
    AUX2_ARB                        ||= 0x2089
    AUX3_ARB                        ||= 0x208A
    AUX4_ARB                        ||= 0x208B
    AUX5_ARB                        ||= 0x208C
    AUX6_ARB                        ||= 0x208D
    AUX7_ARB                        ||= 0x208E
    AUX8_ARB                        ||= 0x208F
    AUX9_ARB                        ||= 0x2090
    BACK_LEFT_ARB                   ||= 0x2085
    BACK_RIGHT_ARB                  ||= 0x2086
    BIND_TO_TEXTURE_RGB_ARB         ||= 0x2070
    BIND_TO_TEXTURE_RGBA_ARB        ||= 0x2071
    CUBE_MAP_FACE_ARB               ||= 0x207C
    FRONT_LEFT_ARB                  ||= 0x2083
    FRONT_RIGHT_ARB                 ||= 0x2084
    MIPMAP_LEVEL_ARB                ||= 0x207B
    MIPMAP_TEXTURE_ARB              ||= 0x2074
    NO_TEXTURE_ARB                  ||= 0x2077
    TEXTURE_1D_ARB                  ||= 0x2079
    TEXTURE_2D_ARB                  ||= 0x207A
    TEXTURE_CUBE_MAP_ARB            ||= 0x2078
    TEXTURE_CUBE_MAP_NEGATIVE_X_ARB ||= 0x207E
    TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB ||= 0x2080
    TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB ||= 0x2082
    TEXTURE_CUBE_MAP_POSITIVE_X_ARB ||= 0x207D
    TEXTURE_CUBE_MAP_POSITIVE_Y_ARB ||= 0x207F
    TEXTURE_CUBE_MAP_POSITIVE_Z_ARB ||= 0x2081
    TEXTURE_FORMAT_ARB              ||= 0x2072
    TEXTURE_RGB_ARB                 ||= 0x2075
    TEXTURE_RGBA_ARB                ||= 0x2076
    TEXTURE_TARGET_ARB              ||= 0x2073
  end
end

module WGL_ARB_render_texture
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBindTexImageARB, [ :pointer, :int ], :bool ],
              [:wglReleaseTexImageARB, [ :pointer, :int ], :bool ],
              [:wglSetPbufferAttribARB, [ :pointer, :pointer ], :bool ]
  end
end