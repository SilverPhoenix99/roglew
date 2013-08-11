module Roglew
  module GL
    BLEND_DST_ALPHA               ||= 0x80CA
    BLEND_DST_RGB                 ||= 0x80C8
    BLEND_SRC_ALPHA               ||= 0x80CB
    BLEND_SRC_RGB                 ||= 0x80C9
    COLOR_SUM                     ||= 0x8458
    COMPARE_R_TO_TEXTURE          ||= 0x884E
    CURRENT_FOG_COORDINATE        ||= 0x8453
    CURRENT_SECONDARY_COLOR       ||= 0x8459
    DECR_WRAP                     ||= 0x8508
    DEPTH_COMPONENT16             ||= 0x81A5
    DEPTH_COMPONENT24             ||= 0x81A6
    DEPTH_COMPONENT32             ||= 0x81A7
    DEPTH_TEXTURE_MODE            ||= 0x884B
    FOG_COORDINATE                ||= 0x8451
    FOG_COORDINATE_ARRAY          ||= 0x8457
    FOG_COORDINATE_ARRAY_POINTER  ||= 0x8456
    FOG_COORDINATE_ARRAY_STRIDE   ||= 0x8455
    FOG_COORDINATE_ARRAY_TYPE     ||= 0x8454
    FOG_COORDINATE_SOURCE         ||= 0x8450
    FRAGMENT_DEPTH                ||= 0x8452
    GENERATE_MIPMAP               ||= 0x8191
    GENERATE_MIPMAP_HINT          ||= 0x8192
    INCR_WRAP                     ||= 0x8507
    MAX_TEXTURE_LOD_BIAS          ||= 0x84FD
    MIRRORED_REPEAT               ||= 0x8370
    POINT_DISTANCE_ATTENUATION    ||= 0x8129
    POINT_FADE_THRESHOLD_SIZE     ||= 0x8128
    POINT_SIZE_MAX                ||= 0x8127
    POINT_SIZE_MIN                ||= 0x8126
    SECONDARY_COLOR_ARRAY         ||= 0x845E
    SECONDARY_COLOR_ARRAY_POINTER ||= 0x845D
    SECONDARY_COLOR_ARRAY_SIZE    ||= 0x845A
    SECONDARY_COLOR_ARRAY_STRIDE  ||= 0x845C
    SECONDARY_COLOR_ARRAY_TYPE    ||= 0x845B
    TEXTURE_COMPARE_FUNC          ||= 0x884D
    TEXTURE_COMPARE_MODE          ||= 0x884C
    TEXTURE_DEPTH_SIZE            ||= 0x884A
    TEXTURE_FILTER_CONTROL        ||= 0x8500
    TEXTURE_LOD_BIAS              ||= 0x8501

  end
end

module GL_VERSION_1_4
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [ :glBlendFuncSeparate, [ :uint, :uint, :uint, :uint ], :void ],
        [ :glMultiDrawArrays, [ :uint, :pointer, :pointer, :int ], :void ],
        [ :glMultiDrawElements, [ :uint, :pointer, :uint, :pointer, :int ], :void ],
        [ :glPointParameterf, [ :uint, :float ], :void ],
        [ :glPointParameterfv, [ :uint, :pointer ], :void ],
        [ :glPointParameteri, [ :uint, :int ], :void ],
        [ :glPointParameteriv, [ :uint, :pointer ], :void ]
    ]

    functions :compatibility, [
        [ :glFogCoordd, [ :double ], :void ],
        [ :glFogCoorddv, [ :pointer ], :void ],
        [ :glFogCoordf, [ :float ], :void ],
        [ :glFogCoordfv, [ :pointer ], :void ],
        [ :glFogCoordPointer, [ :uint, :int, :pointer ], :void ],
        [ :glSecondaryColor3b, [ :char, :char, :char ], :void ],
        [ :glSecondaryColor3bv, [ :pointer ], :void ],
        [ :glSecondaryColor3d, [ :double, :double, :double ], :void ],
        [ :glSecondaryColor3dv, [ :pointer ], :void ],
        [ :glSecondaryColor3f, [ :float, :float, :float ], :void ],
        [ :glSecondaryColor3fv, [ :pointer ], :void ],
        [ :glSecondaryColor3i, [ :int, :int, :int ], :void ],
        [ :glSecondaryColor3iv, [ :pointer ], :void ],
        [ :glSecondaryColor3s, [ :short, :short, :short ], :void ],
        [ :glSecondaryColor3sv, [ :pointer ], :void ],
        [ :glSecondaryColor3ub, [ :uchar, :uchar, :uchar ], :void ],
        [ :glSecondaryColor3ubv, [ :pointer ], :void ],
        [ :glSecondaryColor3ui, [ :uint, :uint, :uint ], :void ],
        [ :glSecondaryColor3uiv, [ :pointer ], :void ],
        [ :glSecondaryColor3us, [ :ushort, :ushort, :ushort ], :void ],
        [ :glSecondaryColor3usv, [ :pointer ], :void ],
        [ :glSecondaryColorPointer, [ :int, :uint, :int, :pointer ], :void ],
        [ :glWindowPos2d, [ :double, :double ], :void ],
        [ :glWindowPos2dv, [ :pointer ], :void ],
        [ :glWindowPos2f, [ :float, :float ], :void ],
        [ :glWindowPos2fv, [ :pointer ], :void ],
        [ :glWindowPos2i, [ :int, :int ], :void ],
        [ :glWindowPos2iv, [ :pointer ], :void ],
        [ :glWindowPos2s, [ :short, :short ], :void ],
        [ :glWindowPos2sv, [ :pointer ], :void ],
        [ :glWindowPos3d, [ :double, :double, :double ], :void ],
        [ :glWindowPos3dv, [ :pointer ], :void ],
        [ :glWindowPos3f, [ :float, :float, :float ], :void ],
        [ :glWindowPos3fv, [ :pointer ], :void ],
        [ :glWindowPos3i, [ :int, :int, :int ], :void ],
        [ :glWindowPos3iv, [ :pointer ], :void ],
        [ :glWindowPos3s, [ :short, :short, :short ], :void  ],
        [ :glWindowPos3sv, [ :pointer ], :void ]
    ]
  end
end