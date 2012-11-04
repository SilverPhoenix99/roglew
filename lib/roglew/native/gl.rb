module Roglew
  class RenderContext; end

  module GL
    module Native
      def self.included(m)
        m.instance_eval do
          extend FFI::Library
          ffi_lib 'opengl32'
          ffi_convention :stdcall
        end
      end
    end

    include Native
    extend NativeObject

    ERROR = {
      1280 => :INVALID_ENUM,
      1281 => :INVALID_VALUE,
      1282 => :INVALID_OPERATION,
      1283 => :STACK_OVERFLOW,
      1284 => :STACK_UNDERFLOW,
      1285 => :OUT_OF_MEMORY
    }.freeze

    N2_BYTES                      = 0x1407
    N2D                           = 0x0600
    N3_BYTES                      = 0x1408
    N3D                           = 0x0601
    N3D_COLOR                     = 0x0602
    N3D_COLOR_TEXTURE             = 0x0603
    N4_BYTES                      = 0x1409
    N4D_COLOR_TEXTURE             = 0x0604
    ACCUM                         = 0x0100
    ACCUM_ALPHA_BITS              = 0x0D5B
    ACCUM_BLUE_BITS               = 0x0D5A
    ACCUM_BUFFER_BIT              = 0x00000200
    ACCUM_CLEAR_VALUE             = 0x0B80
    ACCUM_GREEN_BITS              = 0x0D59
    ACCUM_RED_BITS                = 0x0D58
    ADD                           = 0x0104
    ALL_ATTRIB_BITS               = 0x000fffff
    ALPHA                         = 0x1906
    ALPHA_BIAS                    = 0x0D1D
    ALPHA_BITS                    = 0x0D55
    ALPHA_SCALE                   = 0x0D1C
    ALPHA_TEST                    = 0x0BC0
    ALPHA_TEST_FUNC               = 0x0BC1
    ALPHA_TEST_REF                = 0x0BC2
    ALPHA12                       = 0x803D
    ALPHA16                       = 0x803E
    ALPHA4                        = 0x803B
    ALPHA8                        = 0x803C
    ALWAYS                        = 0x0207
    AMBIENT                       = 0x1200
    AMBIENT_AND_DIFFUSE           = 0x1602
    AND                           = 0x1501
    AND_INVERTED                  = 0x1504
    AND_REVERSE                   = 0x1502
    ATTRIB_STACK_DEPTH            = 0x0BB0
    AUTO_NORMAL                   = 0x0D80
    AUX_BUFFERS                   = 0x0C00
    AUX0                          = 0x0409
    AUX1                          = 0x040A
    AUX2                          = 0x040B
    AUX3                          = 0x040C
    BACK                          = 0x0405
    BACK_LEFT                     = 0x0402
    BACK_RIGHT                    = 0x0403
    BITMAP                        = 0x1A00
    BITMAP_TOKEN                  = 0x0704
    BLEND                         = 0x0BE2
    BLEND_DST                     = 0x0BE0
    BLEND_SRC                     = 0x0BE1
    BLUE                          = 0x1905
    BLUE_BIAS                     = 0x0D1B
    BLUE_BITS                     = 0x0D54
    BLUE_SCALE                    = 0x0D1A
    BYTE                          = 0x1400
    C3F_V3F                       = 0x2A24
    C4F_N3F_V3F                   = 0x2A26
    C4UB_V2F                      = 0x2A22
    C4UB_V3F                      = 0x2A23
    CCW                           = 0x0901
    CLAMP                         = 0x2900
    CLEAR                         = 0x1500
    CLIENT_ALL_ATTRIB_BITS        = 0xffffffff
    CLIENT_ATTRIB_STACK_DEPTH     = 0x0BB1
    CLIENT_PIXEL_STORE_BIT        = 0x00000001
    CLIENT_VERTEX_ARRAY_BIT       = 0x00000002
    CLIP_PLANE0                   = 0x3000
    CLIP_PLANE1                   = 0x3001
    CLIP_PLANE2                   = 0x3002
    CLIP_PLANE3                   = 0x3003
    CLIP_PLANE4                   = 0x3004
    CLIP_PLANE5                   = 0x3005
    COEFF                         = 0x0A00
    COLOR                         = 0x1800
    COLOR_ARRAY                   = 0x8076
    COLOR_ARRAY_POINTER           = 0x8090
    COLOR_ARRAY_SIZE              = 0x8081
    COLOR_ARRAY_STRIDE            = 0x8083
    COLOR_ARRAY_TYPE              = 0x8082
    COLOR_BUFFER_BIT              = 0x00004000
    COLOR_CLEAR_VALUE             = 0x0C22
    COLOR_INDEX                   = 0x1900
    COLOR_INDEX1_EXT              = 0x80E2
    COLOR_INDEX12_EXT             = 0x80E6
    COLOR_INDEX16_EXT             = 0x80E7
    COLOR_INDEX2_EXT              = 0x80E3
    COLOR_INDEX4_EXT              = 0x80E4
    COLOR_INDEX8_EXT              = 0x80E5
    COLOR_INDEXES                 = 0x1603
    COLOR_LOGIC_OP                = 0x0BF2
    COLOR_MATERIAL                = 0x0B57
    COLOR_MATERIAL_FACE           = 0x0B55
    COLOR_MATERIAL_PARAMETER      = 0x0B56
    COLOR_WRITEMASK               = 0x0C23
    COMPILE                       = 0x1300
    COMPILE_AND_EXECUTE           = 0x1301
    CONSTANT_ATTENUATION          = 0x1207
    COPY                          = 0x1503
    COPY_INVERTED                 = 0x150C
    COPY_PIXEL_TOKEN              = 0x0706
    CULL_FACE                     = 0x0B44
    CULL_FACE_MODE                = 0x0B45
    CURRENT_BIT                   = 0x00000001
    CURRENT_COLOR                 = 0x0B00
    CURRENT_INDEX                 = 0x0B01
    CURRENT_NORMAL                = 0x0B02
    CURRENT_RASTER_COLOR          = 0x0B04
    CURRENT_RASTER_DISTANCE       = 0x0B09
    CURRENT_RASTER_INDEX          = 0x0B05
    CURRENT_RASTER_POSITION       = 0x0B07
    CURRENT_RASTER_POSITION_VALID = 0x0B08
    CURRENT_RASTER_TEXTURE_COORDS = 0x0B06
    CURRENT_TEXTURE_COORDS        = 0x0B03
    CW                            = 0x0900
    DECAL                         = 0x2101
    DECR                          = 0x1E03
    DEPTH                         = 0x1801
    DEPTH_BIAS                    = 0x0D1F
    DEPTH_BITS                    = 0x0D56
    DEPTH_BUFFER_BIT              = 0x00000100
    DEPTH_CLEAR_VALUE             = 0x0B73
    DEPTH_COMPONENT               = 0x1902
    DEPTH_FUNC                    = 0x0B74
    DEPTH_RANGE                   = 0x0B70
    DEPTH_SCALE                   = 0x0D1E
    DEPTH_TEST                    = 0x0B71
    DEPTH_WRITEMASK               = 0x0B72
    DIFFUSE                       = 0x1201
    DITHER                        = 0x0BD0
    DOMAIN                        = 0x0A02
    DONT_CARE                     = 0x1100
    DOUBLE                        = 0x140A
    DOUBLEBUFFER                  = 0x0C32
    DRAW_BUFFER                   = 0x0C01
    DRAW_PIXEL_TOKEN              = 0x0705
    DST_ALPHA                     = 0x0304
    DST_COLOR                     = 0x0306
    EDGE_FLAG                     = 0x0B43
    EDGE_FLAG_ARRAY               = 0x8079
    EDGE_FLAG_ARRAY_POINTER       = 0x8093
    EDGE_FLAG_ARRAY_STRIDE        = 0x808C
    EMISSION                      = 0x1600
    ENABLE_BIT                    = 0x00002000
    EQUAL                         = 0x0202
    EQUIV                         = 0x1509
    EVAL_BIT                      = 0x00010000
    EXP                           = 0x0800
    EXP2                          = 0x0801
    EXTENSIONS                    = 0x1F03
    EYE_LINEAR                    = 0x2400
    EYE_PLANE                     = 0x2502
    FALSE                         = 0
    FASTEST                       = 0x1101
    FEEDBACK                      = 0x1C01
    FEEDBACK_BUFFER_POINTER       = 0x0DF0
    FEEDBACK_BUFFER_SIZE          = 0x0DF1
    FEEDBACK_BUFFER_TYPE          = 0x0DF2
    FILL                          = 0x1B02
    FLAT                          = 0x1D00
    FLOAT                         = 0x1406
    FOG                           = 0x0B60
    FOG_BIT                       = 0x00000080
    FOG_COLOR                     = 0x0B66
    FOG_DENSITY                   = 0x0B62
    FOG_END                       = 0x0B64
    FOG_HINT                      = 0x0C54
    FOG_INDEX                     = 0x0B61
    FOG_MODE                      = 0x0B65
    FOG_START                     = 0x0B63
    FRONT                         = 0x0404
    FRONT_AND_BACK                = 0x0408
    FRONT_FACE                    = 0x0B46
    FRONT_LEFT                    = 0x0400
    FRONT_RIGHT                   = 0x0401
    GEQUAL                        = 0x0206
    GREATER                       = 0x0204
    GREEN                         = 0x1904
    GREEN_BIAS                    = 0x0D19
    GREEN_BITS                    = 0x0D53
    GREEN_SCALE                   = 0x0D18
    HINT_BIT                      = 0x00008000
    INCR                          = 0x1E02
    INDEX_ARRAY                   = 0x8077
    INDEX_ARRAY_POINTER           = 0x8091
    INDEX_ARRAY_STRIDE            = 0x8086
    INDEX_ARRAY_TYPE              = 0x8085
    INDEX_BITS                    = 0x0D51
    INDEX_CLEAR_VALUE             = 0x0C20
    INDEX_LOGIC_OP                = 0x0BF1
    INDEX_MODE                    = 0x0C30
    INDEX_OFFSET                  = 0x0D13
    INDEX_SHIFT                   = 0x0D12
    INDEX_WRITEMASK               = 0x0C21
    INT                           = 0x1404
    INTENSITY                     = 0x8049
    INTENSITY12                   = 0x804C
    INTENSITY16                   = 0x804D
    INTENSITY4                    = 0x804A
    INTENSITY8                    = 0x804B
    INVALID_ENUM                  = 0x0500
    INVALID_OPERATION             = 0x0502
    INVALID_VALUE                 = 0x0501
    INVERT                        = 0x150A
    KEEP                          = 0x1E00
    LEFT                          = 0x0406
    LEQUAL                        = 0x0203
    LESS                          = 0x0201
    LIGHT_MODEL_AMBIENT           = 0x0B53
    LIGHT_MODEL_LOCAL_VIEWER      = 0x0B51
    LIGHT_MODEL_TWO_SIDE          = 0x0B52
    LIGHT0                        = 0x4000
    LIGHT1                        = 0x4001
    LIGHT2                        = 0x4002
    LIGHT3                        = 0x4003
    LIGHT4                        = 0x4004
    LIGHT5                        = 0x4005
    LIGHT6                        = 0x4006
    LIGHT7                        = 0x4007
    LIGHTING                      = 0x0B50
    LIGHTING_BIT                  = 0x00000040
    LINE                          = 0x1B01
    LINE_BIT                      = 0x00000004
    LINE_LOOP                     = 0x0002
    LINE_RESET_TOKEN              = 0x0707
    LINE_SMOOTH                   = 0x0B20
    LINE_SMOOTH_HINT              = 0x0C52
    LINE_STIPPLE                  = 0x0B24
    LINE_STIPPLE_PATTERN          = 0x0B25
    LINE_STIPPLE_REPEAT           = 0x0B26
    LINE_STRIP                    = 0x0003
    LINE_TOKEN                    = 0x0702
    LINE_WIDTH                    = 0x0B21
    LINE_WIDTH_GRANULARITY        = 0x0B23
    LINE_WIDTH_RANGE              = 0x0B22
    LINEAR                        = 0x2601
    LINEAR_ATTENUATION            = 0x1208
    LINEAR_MIPMAP_LINEAR          = 0x2703
    LINEAR_MIPMAP_NEAREST         = 0x2701
    LINES                         = 0x0001
    LIST_BASE                     = 0x0B32
    LIST_BIT                      = 0x00020000
    LIST_INDEX                    = 0x0B33
    LIST_MODE                     = 0x0B30
    LOAD                          = 0x0101
    LOGIC_OP                      = 0x0BF1
    LOGIC_OP_MODE                 = 0x0BF0
    LUMINANCE                     = 0x1909
    LUMINANCE_ALPHA               = 0x190A
    LUMINANCE12                   = 0x8041
    LUMINANCE12_ALPHA12           = 0x8047
    LUMINANCE12_ALPHA4            = 0x8046
    LUMINANCE16                   = 0x8042
    LUMINANCE16_ALPHA16           = 0x8048
    LUMINANCE4                    = 0x803F
    LUMINANCE4_ALPHA4             = 0x8043
    LUMINANCE6_ALPHA2             = 0x8044
    LUMINANCE8                    = 0x8040
    LUMINANCE8_ALPHA8             = 0x8045
    MAP_COLOR                     = 0x0D10
    MAP_STENCIL                   = 0x0D11
    MAP1_COLOR_4                  = 0x0D90
    MAP1_GRID_DOMAIN              = 0x0DD0
    MAP1_GRID_SEGMENTS            = 0x0DD1
    MAP1_INDEX                    = 0x0D91
    MAP1_NORMAL                   = 0x0D92
    MAP1_TEXTURE_COORD_1          = 0x0D93
    MAP1_TEXTURE_COORD_2          = 0x0D94
    MAP1_TEXTURE_COORD_3          = 0x0D95
    MAP1_TEXTURE_COORD_4          = 0x0D96
    MAP1_VERTEX_3                 = 0x0D97
    MAP1_VERTEX_4                 = 0x0D98
    MAP2_COLOR_4                  = 0x0DB0
    MAP2_GRID_DOMAIN              = 0x0DD2
    MAP2_GRID_SEGMENTS            = 0x0DD3
    MAP2_INDEX                    = 0x0DB1
    MAP2_NORMAL                   = 0x0DB2
    MAP2_TEXTURE_COORD_1          = 0x0DB3
    MAP2_TEXTURE_COORD_2          = 0x0DB4
    MAP2_TEXTURE_COORD_3          = 0x0DB5
    MAP2_TEXTURE_COORD_4          = 0x0DB6
    MAP2_VERTEX_3                 = 0x0DB7
    MAP2_VERTEX_4                 = 0x0DB8
    MATRIX_MODE                   = 0x0BA0
    MAX_ATTRIB_STACK_DEPTH        = 0x0D35
    MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B
    MAX_CLIP_PLANES               = 0x0D32
    MAX_EVAL_ORDER                = 0x0D30
    MAX_LIGHTS                    = 0x0D31
    MAX_LIST_NESTING              = 0x0B31
    MAX_MODELVIEW_STACK_DEPTH     = 0x0D36
    MAX_NAME_STACK_DEPTH          = 0x0D37
    MAX_PIXEL_MAP_TABLE           = 0x0D34
    MAX_PROJECTION_STACK_DEPTH    = 0x0D38
    MAX_TEXTURE_SIZE              = 0x0D33
    MAX_TEXTURE_STACK_DEPTH       = 0x0D39
    MAX_VIEWPORT_DIMS             = 0x0D3A
    MODELVIEW                     = 0x1700
    MODELVIEW_MATRIX              = 0x0BA6
    MODELVIEW_STACK_DEPTH         = 0x0BA3
    MODULATE                      = 0x2100
    MULT                          = 0x0103
    N3F_V3F                       = 0x2A25
    NAME_STACK_DEPTH              = 0x0D70
    NAND                          = 0x150E
    NEAREST                       = 0x2600
    NEAREST_MIPMAP_LINEAR         = 0x2702
    NEAREST_MIPMAP_NEAREST        = 0x2700
    NEVER                         = 0x0200
    NICEST                        = 0x1102
    NO_ERROR                      = 0
    NONE                          = 0
    NOOP                          = 0x1505
    NOR                           = 0x1508
    NORMAL_ARRAY                  = 0x8075
    NORMAL_ARRAY_POINTER          = 0x808F
    NORMAL_ARRAY_STRIDE           = 0x807F
    NORMAL_ARRAY_TYPE             = 0x807E
    NORMALIZE                     = 0x0BA1
    NOTEQUAL                      = 0x0205
    OBJECT_LINEAR                 = 0x2401
    OBJECT_PLANE                  = 0x2501
    ONE                           = 1
    ONE_MINUS_DST_ALPHA           = 0x0305
    ONE_MINUS_DST_COLOR           = 0x0307
    ONE_MINUS_SRC_ALPHA           = 0x0303
    ONE_MINUS_SRC_COLOR           = 0x0301
    OR                            = 0x1507
    OR_INVERTED                   = 0x150D
    OR_REVERSE                    = 0x150B
    ORDER                         = 0x0A01
    OUT_OF_MEMORY                 = 0x0505
    PACK_ALIGNMENT                = 0x0D05
    PACK_LSB_FIRST                = 0x0D01
    PACK_ROW_LENGTH               = 0x0D02
    PACK_SKIP_PIXELS              = 0x0D04
    PACK_SKIP_ROWS                = 0x0D03
    PACK_SWAP_BYTES               = 0x0D00
    PASS_THROUGH_TOKEN            = 0x0700
    PERSPECTIVE_CORRECTION_HINT   = 0x0C50
    PIXEL_MAP_A_TO_A              = 0x0C79
    PIXEL_MAP_A_TO_A_SIZE         = 0x0CB9
    PIXEL_MAP_B_TO_B              = 0x0C78
    PIXEL_MAP_B_TO_B_SIZE         = 0x0CB8
    PIXEL_MAP_G_TO_G              = 0x0C77
    PIXEL_MAP_G_TO_G_SIZE         = 0x0CB7
    PIXEL_MAP_I_TO_A              = 0x0C75
    PIXEL_MAP_I_TO_A_SIZE         = 0x0CB5
    PIXEL_MAP_I_TO_B              = 0x0C74
    PIXEL_MAP_I_TO_B_SIZE         = 0x0CB4
    PIXEL_MAP_I_TO_G              = 0x0C73
    PIXEL_MAP_I_TO_G_SIZE         = 0x0CB3
    PIXEL_MAP_I_TO_I              = 0x0C70
    PIXEL_MAP_I_TO_I_SIZE         = 0x0CB0
    PIXEL_MAP_I_TO_R              = 0x0C72
    PIXEL_MAP_I_TO_R_SIZE         = 0x0CB2
    PIXEL_MAP_R_TO_R              = 0x0C76
    PIXEL_MAP_R_TO_R_SIZE         = 0x0CB6
    PIXEL_MAP_S_TO_S              = 0x0C71
    PIXEL_MAP_S_TO_S_SIZE         = 0x0CB1
    PIXEL_MODE_BIT                = 0x00000020
    POINT                         = 0x1B00
    POINT_BIT                     = 0x00000002
    POINT_SIZE                    = 0x0B11
    POINT_SIZE_GRANULARITY        = 0x0B13
    POINT_SIZE_RANGE              = 0x0B12
    POINT_SMOOTH                  = 0x0B10
    POINT_SMOOTH_HINT             = 0x0C51
    POINT_TOKEN                   = 0x0701
    POINTS                        = 0x0000
    POLYGON                       = 0x0009
    POLYGON_BIT                   = 0x00000008
    POLYGON_MODE                  = 0x0B40
    POLYGON_OFFSET_FACTOR         = 0x8038
    POLYGON_OFFSET_FILL           = 0x8037
    POLYGON_OFFSET_LINE           = 0x2A02
    POLYGON_OFFSET_POINT          = 0x2A01
    POLYGON_OFFSET_UNITS          = 0x2A00
    POLYGON_SMOOTH                = 0x0B41
    POLYGON_SMOOTH_HINT           = 0x0C53
    POLYGON_STIPPLE               = 0x0B42
    POLYGON_STIPPLE_BIT           = 0x00000010
    POLYGON_TOKEN                 = 0x0703
    POSITION                      = 0x1203
    PROJECTION                    = 0x1701
    PROJECTION_MATRIX             = 0x0BA7
    PROJECTION_STACK_DEPTH        = 0x0BA4
    PROXY_TEXTURE_1D              = 0x8063
    PROXY_TEXTURE_2D              = 0x8064
    Q                             = 0x2003
    QUAD_STRIP                    = 0x0008
    QUADRATIC_ATTENUATION         = 0x1209
    QUADS                         = 0x0007
    R                             = 0x2002
    R3_G3_B2                      = 0x2A10
    READ_BUFFER                   = 0x0C02
    RED                           = 0x1903
    RED_BIAS                      = 0x0D15
    RED_BITS                      = 0x0D52
    RED_SCALE                     = 0x0D14
    RENDER                        = 0x1C00
    RENDER_MODE                   = 0x0C40
    RENDERER                      = 0x1F01
    REPEAT                        = 0x2901
    REPLACE                       = 0x1E01
    RETURN                        = 0x0102
    RGB                           = 0x1907
    RGB10                         = 0x8052
    RGB10_A2                      = 0x8059
    RGB12                         = 0x8053
    RGB16                         = 0x8054
    RGB4                          = 0x804F
    RGB5                          = 0x8050
    RGB5_A1                       = 0x8057
    RGB8                          = 0x8051
    RGBA                          = 0x1908
    RGBA_MODE                     = 0x0C31
    RGBA12                        = 0x805A
    RGBA16                        = 0x805B
    RGBA2                         = 0x8055
    RGBA4                         = 0x8056
    RGBA8                         = 0x8058
    RIGHT                         = 0x0407
    S                             = 0x2000
    SCISSOR_BIT                   = 0x00080000
    SCISSOR_BOX                   = 0x0C10
    SCISSOR_TEST                  = 0x0C11
    SELECT                        = 0x1C02
    SELECTION_BUFFER_POINTER      = 0x0DF3
    SELECTION_BUFFER_SIZE         = 0x0DF4
    SET                           = 0x150F
    SHADE_MODEL                   = 0x0B54
    SHININESS                     = 0x1601
    SHORT                         = 0x1402
    SMOOTH                        = 0x1D01
    SPECULAR                      = 0x1202
    SPHERE_MAP                    = 0x2402
    SPOT_CUTOFF                   = 0x1206
    SPOT_DIRECTION                = 0x1204
    SPOT_EXPONENT                 = 0x1205
    SRC_ALPHA                     = 0x0302
    SRC_ALPHA_SATURATE            = 0x0308
    SRC_COLOR                     = 0x0300
    STACK_OVERFLOW                = 0x0503
    STACK_UNDERFLOW               = 0x0504
    STENCIL                       = 0x1802
    STENCIL_BITS                  = 0x0D57
    STENCIL_BUFFER_BIT            = 0x00000400
    STENCIL_CLEAR_VALUE           = 0x0B91
    STENCIL_FAIL                  = 0x0B94
    STENCIL_FUNC                  = 0x0B92
    STENCIL_INDEX                 = 0x1901
    STENCIL_PASS_DEPTH_FAIL       = 0x0B95
    STENCIL_PASS_DEPTH_PASS       = 0x0B96
    STENCIL_REF                   = 0x0B97
    STENCIL_TEST                  = 0x0B90
    STENCIL_VALUE_MASK            = 0x0B93
    STENCIL_WRITEMASK             = 0x0B98
    STEREO                        = 0x0C33
    SUBPIXEL_BITS                 = 0x0D50
    T                             = 0x2001
    T2F_C3F_V3F                   = 0x2A2A
    T2F_C4F_N3F_V3F               = 0x2A2C
    T2F_C4UB_V3F                  = 0x2A29
    T2F_N3F_V3F                   = 0x2A2B
    T2F_V3F                       = 0x2A27
    T4F_C4F_N3F_V4F               = 0x2A2D
    T4F_V4F                       = 0x2A28
    TEXTURE                       = 0x1702
    TEXTURE_1D                    = 0x0DE0
    TEXTURE_2D                    = 0x0DE1
    TEXTURE_ALPHA_SIZE            = 0x805F
    TEXTURE_BINDING_1D            = 0x8068
    TEXTURE_BINDING_2D            = 0x8069
    TEXTURE_BIT                   = 0x00040000
    TEXTURE_BLUE_SIZE             = 0x805E
    TEXTURE_BORDER                = 0x1005
    TEXTURE_BORDER_COLOR          = 0x1004
    TEXTURE_COMPONENTS            = 0x1003
    TEXTURE_COORD_ARRAY           = 0x8078
    TEXTURE_COORD_ARRAY_POINTER   = 0x8092
    TEXTURE_COORD_ARRAY_SIZE      = 0x8088
    TEXTURE_COORD_ARRAY_STRIDE    = 0x808A
    TEXTURE_COORD_ARRAY_TYPE      = 0x8089
    TEXTURE_ENV                   = 0x2300
    TEXTURE_ENV_COLOR             = 0x2201
    TEXTURE_ENV_MODE              = 0x2200
    TEXTURE_GEN_MODE              = 0x2500
    TEXTURE_GEN_Q                 = 0x0C63
    TEXTURE_GEN_R                 = 0x0C62
    TEXTURE_GEN_S                 = 0x0C60
    TEXTURE_GEN_T                 = 0x0C61
    TEXTURE_GREEN_SIZE            = 0x805D
    TEXTURE_HEIGHT                = 0x1001
    TEXTURE_INTENSITY_SIZE        = 0x8061
    TEXTURE_INTERNAL_FORMAT       = 0x1003
    TEXTURE_LUMINANCE_SIZE        = 0x8060
    TEXTURE_MAG_FILTER            = 0x2800
    TEXTURE_MATRIX                = 0x0BA8
    TEXTURE_MIN_FILTER            = 0x2801
    TEXTURE_PRIORITY              = 0x8066
    TEXTURE_RED_SIZE              = 0x805C
    TEXTURE_RESIDENT              = 0x8067
    TEXTURE_STACK_DEPTH           = 0x0BA5
    TEXTURE_WIDTH                 = 0x1000
    TEXTURE_WRAP_S                = 0x2802
    TEXTURE_WRAP_T                = 0x2803
    TRANSFORM_BIT                 = 0x00001000
    TRIANGLE_FAN                  = 0x0006
    TRIANGLE_STRIP                = 0x0005
    TRIANGLES                     = 0x0004
    TRUE                          = 1
    UNPACK_ALIGNMENT              = 0x0CF5
    UNPACK_LSB_FIRST              = 0x0CF1
    UNPACK_ROW_LENGTH             = 0x0CF2
    UNPACK_SKIP_PIXELS            = 0x0CF4
    UNPACK_SKIP_ROWS              = 0x0CF3
    UNPACK_SWAP_BYTES             = 0x0CF0
    UNSIGNED_BYTE                 = 0x1401
    UNSIGNED_INT                  = 0x1405
    UNSIGNED_SHORT                = 0x1403
    V2F                           = 0x2A20
    V3F                           = 0x2A21
    VENDOR                        = 0x1F00
    VERSION                       = 0x1F02
    VERTEX_ARRAY                  = 0x8074
    VERTEX_ARRAY_POINTER          = 0x808E
    VERTEX_ARRAY_SIZE             = 0x807A
    VERTEX_ARRAY_STRIDE           = 0x807C
    VERTEX_ARRAY_TYPE             = 0x807B
    VIEWPORT                      = 0x0BA2
    VIEWPORT_BIT                  = 0x00000800
    XOR                           = 0x1506
    ZERO                          = 0
    ZOOM_X                        = 0x0D16
    ZOOM_Y                        = 0x0D17

    [
      [ :Accum, [ :uint, :float ], :void ],
      [ :AlphaFunc, [ :uint, :float ], :void ],
      [ :AreTexturesResident, [ :int, :pointer, :pointer ], :bool ],
      [ :ArrayElement, [ :int ], :void ],
      [ :Begin, [ :uint ], :void ],
      [ :BindTexture, [ :uint, :uint ], :void ],
      [ :Bitmap, [ :int, :int, :float, :float, :float, :float, :pointer ], :void ],
      [ :BlendFunc, [ :uint, :uint ], :void ],
      [ :CallList, [ :uint ], :void ],
      [ :CallLists, [ :int, :uint, :pointer ], :void ],
      [ :Clear, [ :uint ], :void ],
      [ :ClearAccum, [ :float, :float, :float, :float ], :void ],
      [ :ClearColor, [ :float, :float, :float, :float ], :void ],
      [ :ClearDepth, [ :double ], :void ],
      [ :ClearIndex, [ :float ], :void ],
      [ :ClearStencil, [ :int ], :void ],
      [ :ClipPlane, [ :uint, :pointer ], :void ],
      [ :Color3b, [ :char, :char, :char ], :void ],
      [ :Color3bv, [ :pointer ], :void ],
      [ :Color3d, [ :double, :double, :double ], :void ],
      [ :Color3dv, [ :pointer ], :void ],
      [ :Color3f, [ :float, :float, :float ], :void ],
      [ :Color3fv, [ :pointer ], :void ],
      [ :Color3i, [ :int, :int, :int ], :void ],
      [ :Color3iv, [ :pointer ], :void ],
      [ :Color3s, [ :short, :short, :short ], :void ],
      [ :Color3sv, [ :pointer ], :void ],
      [ :Color3ub, [ :uchar, :uchar, :uchar ], :void ],
      [ :Color3ubv, [ :pointer ], :void ],
      [ :Color3ui, [ :uint, :uint, :uint ], :void ],
      [ :Color3uiv, [ :pointer ], :void ],
      [ :Color3us, [ :ushort, :ushort, :ushort ], :void ],
      [ :Color3usv, [ :pointer ], :void ],
      [ :Color4b, [ :char, :char, :char, :char ], :void ],
      [ :Color4bv, [ :pointer ], :void ],
      [ :Color4d, [ :double, :double, :double, :double ], :void ],
      [ :Color4dv, [ :pointer ], :void ],
      [ :Color4f, [ :float, :float, :float, :float ], :void ],
      [ :Color4fv, [ :pointer ], :void ],
      [ :Color4i, [ :int, :int, :int, :int ], :void ],
      [ :Color4iv, [ :pointer ], :void ],
      [ :Color4s, [ :short, :short, :short, :short ], :void ],
      [ :Color4sv, [ :pointer ], :void ],
      [ :Color4ub, [ :uchar, :uchar, :uchar, :uchar ], :void ],
      [ :Color4ubv, [ :pointer ], :void ],
      [ :Color4ui, [ :uint, :uint, :uint, :uint ], :void ],
      [ :Color4uiv, [ :pointer ], :void ],
      [ :Color4us, [ :ushort, :ushort, :ushort, :ushort ], :void ],
      [ :Color4usv, [ :pointer ], :void ],
      [ :ColorMask, [ :uchar, :uchar, :uchar, :uchar ], :void ],
      [ :ColorMaterial, [ :uint, :uint ], :void ],
      [ :ColorPointer, [ :int, :uint, :int, :pointer ], :void ],
      [ :CopyPixels, [ :int, :int, :int, :int, :uint ], :void ],
      [ :CopyTexImage1D, [ :uint, :int, :uint, :int, :int, :int, :int ], :void ],
      [ :CopyTexImage2D, [ :uint, :int, :uint, :int, :int, :int, :int, :int ], :void ],
      [ :CopyTexSubImage1D, [ :uint, :int, :int, :int, :int, :int ], :void ],
      [ :CopyTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :int, :int ], :void ],
      [ :CullFace, [ :uint ], :void ],
      [ :DeleteLists, [ :uint, :int ], :void ],
      [ :DeleteTextures, [ :int, :pointer ], :void ],
      [ :DepthFunc, [ :uint ], :void ],
      [ :DepthMask, [ :uchar ], :void ],
      [ :DepthRange, [ :double, :double ], :void ],
      [ :Disable, [ :uint ], :void ],
      [ :DisableClientState, [ :uint ], :void ],
      [ :DrawArrays, [ :uint, :int, :int ], :void ],
      [ :DrawBuffer, [ :uint ], :void ],
      [ :DrawElements, [ :uint, :int, :uint, :pointer ], :void ],
      [ :DrawPixels, [ :int, :int, :uint, :uint, :pointer ], :void ],
      [ :EdgeFlag, [ :uchar ], :void ],
      [ :EdgeFlagPointer, [ :int, :pointer ], :void ],
      [ :EdgeFlagv, [ :pointer ], :void ],
      [ :Enable, [ :uint ], :void ],
      [ :EnableClientState, [ :uint ], :void ],
      [ :End, [  ], :void ],
      [ :EndList, [  ], :void ],
      [ :EvalCoord1d, [ :double ], :void ],
      [ :EvalCoord1dv, [ :pointer ], :void ],
      [ :EvalCoord1f, [ :float ], :void ],
      [ :EvalCoord1fv, [ :pointer ], :void ],
      [ :EvalCoord2d, [ :double, :double ], :void ],
      [ :EvalCoord2dv, [ :pointer ], :void ],
      [ :EvalCoord2f, [ :float, :float ], :void ],
      [ :EvalCoord2fv, [ :pointer ], :void ],
      [ :EvalMesh1, [ :uint, :int, :int ], :void ],
      [ :EvalMesh2, [ :uint, :int, :int, :int, :int ], :void ],
      [ :EvalPoint1, [ :int ], :void ],
      [ :EvalPoint2, [ :int, :int ], :void ],
      [ :FeedbackBuffer, [ :int, :uint, :pointer ], :void ],
      [ :Finish, [  ], :void ],
      [ :Flush, [  ], :void ],
      [ :Fogf, [ :uint, :float ], :void ],
      [ :Fogfv, [ :uint, :pointer ], :void ],
      [ :Fogi, [ :uint, :int ], :void ],
      [ :Fogiv, [ :uint, :pointer ], :void ],
      [ :FrontFace, [ :uint ], :void ],
      [ :Frustum, [ :double, :double, :double, :double, :double, :double ], :void ],
      [ :GenLists, [ :int ], :uint ],
      [ :GenTextures, [ :int, :pointer ], :void ],
      [ :GetBooleanv, [ :uint, :pointer ], :void ],
      [ :GetClipPlane, [ :uint, :pointer ], :void ],
      [ :GetDoublev, [ :uint, :pointer ], :void ],
      [ :GetError, [  ], :uint ],
      [ :GetFloatv, [ :uint, :pointer ], :void ],
      [ :GetIntegerv, [ :uint, :pointer ], :void ],
      [ :GetLightfv, [ :uint, :uint, :pointer ], :void ],
      [ :GetLightiv, [ :uint, :uint, :pointer ], :void ],
      [ :GetMapdv, [ :uint, :uint, :pointer ], :void ],
      [ :GetMapfv, [ :uint, :uint, :pointer ], :void ],
      [ :GetMapiv, [ :uint, :uint, :pointer ], :void ],
      [ :GetMaterialfv, [ :uint, :uint, :pointer ], :void ],
      [ :GetMaterialiv, [ :uint, :uint, :pointer ], :void ],
      [ :GetPixelMapfv, [ :uint, :pointer ], :void ],
      [ :GetPixelMapuiv, [ :uint, :pointer ], :void ],
      [ :GetPixelMapusv, [ :uint, :pointer ], :void ],
      [ :GetPointerv, [ :uint, :pointer ], :void ],
      [ :GetPolygonStipple, [ :pointer ], :void ],
      [ :GetString, [ :uint ], :string ],
      [ :GetTexEnvfv, [ :uint, :uint, :pointer ], :void ],
      [ :GetTexEnviv, [ :uint, :uint, :pointer ], :void ],
      [ :GetTexGendv, [ :uint, :uint, :pointer ], :void ],
      [ :GetTexGenfv, [ :uint, :uint, :pointer ], :void ],
      [ :GetTexGeniv, [ :uint, :uint, :pointer ], :void ],
      [ :GetTexImage, [ :uint, :int, :uint, :uint, :pointer ], :void ],
      [ :GetTexLevelParameterfv, [ :uint, :int, :uint, :pointer ], :void ],
      [ :GetTexLevelParameteriv, [ :uint, :int, :uint, :pointer ], :void ],
      [ :GetTexParameterfv, [ :uint, :uint, :pointer ], :void ],
      [ :GetTexParameteriv, [ :uint, :uint, :pointer ], :void ],
      [ :Hint, [ :uint, :uint ], :void ],
      [ :Indexd, [ :double ], :void ],
      [ :Indexdv, [ :pointer ], :void ],
      [ :Indexf, [ :float ], :void ],
      [ :Indexfv, [ :pointer ], :void ],
      [ :Indexi, [ :int ], :void ],
      [ :Indexiv, [ :pointer ], :void ],
      [ :IndexMask, [ :uint ], :void ],
      [ :IndexPointer, [ :uint, :int, :pointer ], :void ],
      [ :Indexs, [ :short ], :void ],
      [ :Indexsv, [ :pointer ], :void ],
      [ :Indexub, [ :uchar ], :void ],
      [ :Indexubv, [ :pointer ], :void ],
      [ :InitNames, [  ], :void ],
      [ :InterleavedArrays, [ :uint, :int, :pointer ], :void ],
      [ :IsEnabled, [ :uint ], :uchar ],
      [ :IsList, [ :uint ], :uchar ],
      [ :IsTexture, [ :uint ], :uchar ],
      [ :Lightf, [ :uint, :uint, :float ], :void ],
      [ :Lightfv, [ :uint, :uint, :pointer ], :void ],
      [ :Lighti, [ :uint, :uint, :int ], :void ],
      [ :Lightiv, [ :uint, :uint, :pointer ], :void ],
      [ :LightModelf, [ :uint, :float ], :void ],
      [ :LightModelfv, [ :uint, :pointer ], :void ],
      [ :LightModeli, [ :uint, :int ], :void ],
      [ :LightModeliv, [ :uint, :pointer ], :void ],
      [ :LineStipple, [ :int, :ushort ], :void ],
      [ :LineWidth, [ :float ], :void ],
      [ :ListBase, [ :uint ], :void ],
      [ :LoadIdentity, [  ], :void ],
      [ :LoadMatrixd, [ :pointer ], :void ],
      [ :LoadMatrixf, [ :pointer ], :void ],
      [ :LoadName, [ :uint ], :void ],
      [ :LogicOp, [ :uint ], :void ],
      [ :Map1d, [ :uint, :double, :double, :int, :int, :pointer ], :void ],
      [ :Map1f, [ :uint, :float, :float, :int, :int, :pointer ], :void ],
      [ :Map2d, [ :uint, :double, :double, :int, :int, :double, :double, :int, :int, :pointer ], :void ],
      [ :Map2f, [ :uint, :float, :float, :int, :int, :float, :float, :int, :int, :pointer ], :void ],
      [ :MapGrid1d, [ :int, :double, :double ], :void ],
      [ :MapGrid1f, [ :int, :float, :float ], :void ],
      [ :MapGrid2d, [ :int, :double, :double, :int, :double, :double ], :void ],
      [ :MapGrid2f, [ :int, :float, :float, :int, :float, :float ], :void ],
      [ :Materialf, [ :uint, :uint, :float ], :void ],
      [ :Materialfv, [ :uint, :uint, :pointer ], :void ],
      [ :Materiali, [ :uint, :uint, :int ], :void ],
      [ :Materialiv, [ :uint, :uint, :pointer ], :void ],
      [ :MatrixMode, [ :uint ], :void ],
      [ :MultMatrixd, [ :pointer ], :void ],
      [ :MultMatrixf, [ :pointer ], :void ],
      [ :NewList, [ :uint, :uint ], :void ],
      [ :Normal3b, [ :char, :char, :char ], :void ],
      [ :Normal3bv, [ :pointer ], :void ],
      [ :Normal3d, [ :double, :double, :double ], :void ],
      [ :Normal3dv, [ :pointer ], :void ],
      [ :Normal3f, [ :float, :float, :float ], :void ],
      [ :Normal3fv, [ :pointer ], :void ],
      [ :Normal3i, [ :int, :int, :int ], :void ],
      [ :Normal3iv, [ :pointer ], :void ],
      [ :Normal3s, [ :short, :short, :short ], :void ],
      [ :Normal3sv, [ :pointer ], :void ],
      [ :NormalPointer, [ :uint, :int, :pointer ], :void ],
      [ :Ortho, [ :double, :double, :double, :double, :double, :double ], :void ],
      [ :PassThrough, [ :float ], :void ],
      [ :PixelMapfv, [ :uint, :int, :pointer ], :void ],
      [ :PixelMapuiv, [ :uint, :int, :pointer ], :void ],
      [ :PixelMapusv, [ :uint, :int, :pointer ], :void ],
      [ :PixelStoref, [ :uint, :float ], :void ],
      [ :PixelStorei, [ :uint, :int ], :void ],
      [ :PixelTransferf, [ :uint, :float ], :void ],
      [ :PixelTransferi, [ :uint, :int ], :void ],
      [ :PixelZoom, [ :float, :float ], :void ],
      [ :PointSize, [ :float ], :void ],
      [ :PolygonMode, [ :uint, :uint ], :void ],
      [ :PolygonOffset, [ :float, :float ], :void ],
      [ :PolygonStipple, [ :pointer ], :void ],
      [ :PopAttrib, [  ], :void ],
      [ :PopClientAttrib, [  ], :void ],
      [ :PopMatrix, [  ], :void ],
      [ :PopName, [  ], :void ],
      [ :PrioritizeTextures, [ :int, :pointer, :pointer ], :void ],
      [ :PushAttrib, [ :uint ], :void ],
      [ :PushClientAttrib, [ :uint ], :void ],
      [ :PushMatrix, [  ], :void ],
      [ :PushName, [ :uint ], :void ],
      [ :RasterPos2d, [ :double, :double ], :void ],
      [ :RasterPos2dv, [ :pointer ], :void ],
      [ :RasterPos2f, [ :float, :float ], :void ],
      [ :RasterPos2fv, [ :pointer ], :void ],
      [ :RasterPos2i, [ :int, :int ], :void ],
      [ :RasterPos2iv, [ :pointer ], :void ],
      [ :RasterPos2s, [ :short, :short ], :void ],
      [ :RasterPos2sv, [ :pointer ], :void ],
      [ :RasterPos3d, [ :double, :double, :double ], :void ],
      [ :RasterPos3dv, [ :pointer ], :void ],
      [ :RasterPos3f, [ :float, :float, :float ], :void ],
      [ :RasterPos3fv, [ :pointer ], :void ],
      [ :RasterPos3i, [ :int, :int, :int ], :void ],
      [ :RasterPos3iv, [ :pointer ], :void ],
      [ :RasterPos3s, [ :short, :short, :short ], :void ],
      [ :RasterPos3sv, [ :pointer ], :void ],
      [ :RasterPos4d, [ :double, :double, :double, :double ], :void ],
      [ :RasterPos4dv, [ :pointer ], :void ],
      [ :RasterPos4f, [ :float, :float, :float, :float ], :void ],
      [ :RasterPos4fv, [ :pointer ], :void ],
      [ :RasterPos4i, [ :int, :int, :int, :int ], :void ],
      [ :RasterPos4iv, [ :pointer ], :void ],
      [ :RasterPos4s, [ :short, :short, :short, :short ], :void ],
      [ :RasterPos4sv, [ :pointer ], :void ],
      [ :ReadBuffer, [ :uint ], :void ],
      [ :ReadPixels, [ :int, :int, :int, :int, :uint, :uint, :pointer ], :void ],
      [ :Rectd, [ :double, :double, :double, :double ], :void ],
      [ :Rectdv, [ :pointer, :pointer ], :void ],
      [ :Rectf, [ :float, :float, :float, :float ], :void ],
      [ :Rectfv, [ :pointer, :pointer ], :void ],
      [ :Recti, [ :int, :int, :int, :int ], :void ],
      [ :Rectiv, [ :pointer, :pointer ], :void ],
      [ :Rects, [ :short, :short, :short, :short ], :void ],
      [ :Rectsv, [ :pointer, :pointer ], :void ],
      [ :RenderMode, [ :uint ], :int ],
      [ :Rotated, [ :double, :double, :double, :double ], :void ],
      [ :Rotatef, [ :float, :float, :float, :float ], :void ],
      [ :Scaled, [ :double, :double, :double ], :void ],
      [ :Scalef, [ :float, :float, :float ], :void ],
      [ :Scissor, [ :int, :int, :int, :int ], :void ],
      [ :SelectBuffer, [ :int, :pointer ], :void ],
      [ :ShadeModel, [ :uint ], :void ],
      [ :StencilFunc, [ :uint, :int, :uint ], :void ],
      [ :StencilMask, [ :uint ], :void ],
      [ :StencilOp, [ :uint, :uint, :uint ], :void ],
      [ :TexCoord1d, [ :double ], :void ],
      [ :TexCoord1dv, [ :pointer ], :void ],
      [ :TexCoord1f, [ :float ], :void ],
      [ :TexCoord1fv, [ :pointer ], :void ],
      [ :TexCoord1i, [ :int ], :void ],
      [ :TexCoord1iv, [ :pointer ], :void ],
      [ :TexCoord1s, [ :short ], :void ],
      [ :TexCoord1sv, [ :pointer ], :void ],
      [ :TexCoord2d, [ :double, :double ], :void ],
      [ :TexCoord2dv, [ :pointer ], :void ],
      [ :TexCoord2f, [ :float, :float ], :void ],
      [ :TexCoord2fv, [ :pointer ], :void ],
      [ :TexCoord2i, [ :int, :int ], :void ],
      [ :TexCoord2iv, [ :pointer ], :void ],
      [ :TexCoord2s, [ :short, :short ], :void ],
      [ :TexCoord2sv, [ :pointer ], :void ],
      [ :TexCoord3d, [ :double, :double, :double ], :void ],
      [ :TexCoord3dv, [ :pointer ], :void ],
      [ :TexCoord3f, [ :float, :float, :float ], :void ],
      [ :TexCoord3fv, [ :pointer ], :void ],
      [ :TexCoord3i, [ :int, :int, :int ], :void ],
      [ :TexCoord3iv, [ :pointer ], :void ],
      [ :TexCoord3s, [ :short, :short, :short ], :void ],
      [ :TexCoord3sv, [ :pointer ], :void ],
      [ :TexCoord4d, [ :double, :double, :double, :double ], :void ],
      [ :TexCoord4dv, [ :pointer ], :void ],
      [ :TexCoord4f, [ :float, :float, :float, :float ], :void ],
      [ :TexCoord4fv, [ :pointer ], :void ],
      [ :TexCoord4i, [ :int, :int, :int, :int ], :void ],
      [ :TexCoord4iv, [ :pointer ], :void ],
      [ :TexCoord4s, [ :short, :short, :short, :short ], :void ],
      [ :TexCoord4sv, [ :pointer ], :void ],
      [ :TexCoordPointer, [ :int, :uint, :int, :pointer ], :void ],
      [ :TexEnvf, [ :uint, :uint, :float ], :void ],
      [ :TexEnvfv, [ :uint, :uint, :pointer ], :void ],
      [ :TexEnvi, [ :uint, :uint, :int ], :void ],
      [ :TexEnviv, [ :uint, :uint, :pointer ], :void ],
      [ :TexGend, [ :uint, :uint, :double ], :void ],
      [ :TexGendv, [ :uint, :uint, :pointer ], :void ],
      [ :TexGenf, [ :uint, :uint, :float ], :void ],
      [ :TexGenfv, [ :uint, :uint, :pointer ], :void ],
      [ :TexGeni, [ :uint, :uint, :int ], :void ],
      [ :TexGeniv, [ :uint, :uint, :pointer ], :void ],
      [ :TexImage1D, [ :uint, :int, :int, :int, :int, :uint, :uint, :pointer ], :void ],
      [ :TexImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void ],
      [ :TexParameterf, [ :uint, :uint, :float ], :void ],
      [ :TexParameterfv, [ :uint, :uint, :pointer ], :void ],
      [ :TexParameteri, [ :uint, :uint, :int ], :void ],
      [ :TexParameteriv, [ :uint, :uint, :pointer ], :void ],
      [ :TexSubImage1D, [ :uint, :int, :int, :int, :uint, :uint, :pointer ], :void ],
      [ :TexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void ],
      [ :Translated, [ :double, :double, :double ], :void ],
      [ :Translatef, [ :float, :float, :float ], :void ],
      [ :Vertex2d, [ :double, :double ], :void ],
      [ :Vertex2dv, [ :pointer ], :void ],
      [ :Vertex2f, [ :float, :float ], :void ],
      [ :Vertex2fv, [ :pointer ], :void ],
      [ :Vertex2i, [ :int, :int ], :void ],
      [ :Vertex2iv, [ :pointer ], :void ],
      [ :Vertex2s, [ :short, :short ], :void ],
      [ :Vertex2sv, [ :pointer ], :void ],
      [ :Vertex3d, [ :double, :double, :double ], :void ],
      [ :Vertex3dv, [ :pointer ], :void ],
      [ :Vertex3f, [ :float, :float, :float ], :void ],
      [ :Vertex3fv, [ :pointer ], :void ],
      [ :Vertex3i, [ :int, :int, :int ], :void ],
      [ :Vertex3iv, [ :pointer ], :void ],
      [ :Vertex3s, [ :short, :short, :short ], :void ],
      [ :Vertex3sv, [ :pointer ], :void ],
      [ :Vertex4d, [ :double, :double, :double, :double ], :void ],
      [ :Vertex4dv, [ :pointer ], :void ],
      [ :Vertex4f, [ :float, :float, :float, :float ], :void ],
      [ :Vertex4fv, [ :pointer ], :void ],
      [ :Vertex4i, [ :int, :int, :int, :int ], :void ],
      [ :Vertex4iv, [ :pointer ], :void ],
      [ :Vertex4s, [ :short, :short, :short, :short ], :void ],
      [ :Vertex4sv, [ :pointer ], :void ],
      [ :VertexPointer, [ :int, :uint, :int, :pointer ], :void ],
      [ :Viewport, [ :int, :int, :int, :int ], :void ]
    ].each do |name, args, ret|
      attach_function name, "gl#{name}", args, ret
      RenderContext.class_eval "def gl#{name}(*args) GL.#{name}(*args) end"
    end
  end
end

require_relative 'wgl' #TODO platforms