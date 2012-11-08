module Roglew
  module GL
    TEXTURE_1D                             = 0x0DE0 unless const_defined? :TEXTURE_1D
    TEXTURE_2D                             = 0x0DE1 unless const_defined? :TEXTURE_2D
    TEXTURE_3D                             = 0x806F unless const_defined? :TEXTURE_3D
    SAMPLES                                = 0x80A9 unless const_defined? :SAMPLES
    INTERNALFORMAT_SUPPORTED               = 0x826F unless const_defined? :INTERNALFORMAT_SUPPORTED
    INTERNALFORMAT_PREFERRED               = 0x8270 unless const_defined? :INTERNALFORMAT_PREFERRED
    INTERNALFORMAT_RED_SIZE                = 0x8271 unless const_defined? :INTERNALFORMAT_RED_SIZE
    INTERNALFORMAT_GREEN_SIZE              = 0x8272 unless const_defined? :INTERNALFORMAT_GREEN_SIZE
    INTERNALFORMAT_BLUE_SIZE               = 0x8273 unless const_defined? :INTERNALFORMAT_BLUE_SIZE
    INTERNALFORMAT_ALPHA_SIZE              = 0x8274 unless const_defined? :INTERNALFORMAT_ALPHA_SIZE
    INTERNALFORMAT_DEPTH_SIZE              = 0x8275 unless const_defined? :INTERNALFORMAT_DEPTH_SIZE
    INTERNALFORMAT_STENCIL_SIZE            = 0x8276 unless const_defined? :INTERNALFORMAT_STENCIL_SIZE
    INTERNALFORMAT_SHARED_SIZE             = 0x8277 unless const_defined? :INTERNALFORMAT_SHARED_SIZE
    INTERNALFORMAT_RED_TYPE                = 0x8278 unless const_defined? :INTERNALFORMAT_RED_TYPE
    INTERNALFORMAT_GREEN_TYPE              = 0x8279 unless const_defined? :INTERNALFORMAT_GREEN_TYPE
    INTERNALFORMAT_BLUE_TYPE               = 0x827A unless const_defined? :INTERNALFORMAT_BLUE_TYPE
    INTERNALFORMAT_ALPHA_TYPE              = 0x827B unless const_defined? :INTERNALFORMAT_ALPHA_TYPE
    INTERNALFORMAT_DEPTH_TYPE              = 0x827C unless const_defined? :INTERNALFORMAT_DEPTH_TYPE
    INTERNALFORMAT_STENCIL_TYPE            = 0x827D unless const_defined? :INTERNALFORMAT_STENCIL_TYPE
    MAX_WIDTH                              = 0x827E unless const_defined? :MAX_WIDTH
    MAX_HEIGHT                             = 0x827F unless const_defined? :MAX_HEIGHT
    MAX_DEPTH                              = 0x8280 unless const_defined? :MAX_DEPTH
    MAX_LAYERS                             = 0x8281 unless const_defined? :MAX_LAYERS
    MAX_COMBINED_DIMENSIONS                = 0x8282 unless const_defined? :MAX_COMBINED_DIMENSIONS
    COLOR_COMPONENTS                       = 0x8283 unless const_defined? :COLOR_COMPONENTS
    DEPTH_COMPONENTS                       = 0x8284 unless const_defined? :DEPTH_COMPONENTS
    STENCIL_COMPONENTS                     = 0x8285 unless const_defined? :STENCIL_COMPONENTS
    COLOR_RENDERABLE                       = 0x8286 unless const_defined? :COLOR_RENDERABLE
    DEPTH_RENDERABLE                       = 0x8287 unless const_defined? :DEPTH_RENDERABLE
    STENCIL_RENDERABLE                     = 0x8288 unless const_defined? :STENCIL_RENDERABLE
    FRAMEBUFFER_RENDERABLE                 = 0x8289 unless const_defined? :FRAMEBUFFER_RENDERABLE
    FRAMEBUFFER_RENDERABLE_LAYERED         = 0x828A unless const_defined? :FRAMEBUFFER_RENDERABLE_LAYERED
    FRAMEBUFFER_BLEND                      = 0x828B unless const_defined? :FRAMEBUFFER_BLEND
    READ_PIXELS                            = 0x828C unless const_defined? :READ_PIXELS
    READ_PIXELS_FORMAT                     = 0x828D unless const_defined? :READ_PIXELS_FORMAT
    READ_PIXELS_TYPE                       = 0x828E unless const_defined? :READ_PIXELS_TYPE
    TEXTURE_IMAGE_FORMAT                   = 0x828F unless const_defined? :TEXTURE_IMAGE_FORMAT
    TEXTURE_IMAGE_TYPE                     = 0x8290 unless const_defined? :TEXTURE_IMAGE_TYPE
    GET_TEXTURE_IMAGE_FORMAT               = 0x8291 unless const_defined? :GET_TEXTURE_IMAGE_FORMAT
    GET_TEXTURE_IMAGE_TYPE                 = 0x8292 unless const_defined? :GET_TEXTURE_IMAGE_TYPE
    MIPMAP                                 = 0x8293 unless const_defined? :MIPMAP
    MANUAL_GENERATE_MIPMAP                 = 0x8294 unless const_defined? :MANUAL_GENERATE_MIPMAP
    AUTO_GENERATE_MIPMAP                   = 0x8295 unless const_defined? :AUTO_GENERATE_MIPMAP
    COLOR_ENCODING                         = 0x8296 unless const_defined? :COLOR_ENCODING
    SRGB_READ                              = 0x8297 unless const_defined? :SRGB_READ
    SRGB_WRITE                             = 0x8298 unless const_defined? :SRGB_WRITE
    SRGB_DECODE_ARB                        = 0x8299 unless const_defined? :SRGB_DECODE_ARB
    FILTER                                 = 0x829A unless const_defined? :FILTER
    VERTEX_TEXTURE                         = 0x829B unless const_defined? :VERTEX_TEXTURE
    TESS_CONTROL_TEXTURE                   = 0x829C unless const_defined? :TESS_CONTROL_TEXTURE
    TESS_EVALUATION_TEXTURE                = 0x829D unless const_defined? :TESS_EVALUATION_TEXTURE
    GEOMETRY_TEXTURE                       = 0x829E unless const_defined? :GEOMETRY_TEXTURE
    FRAGMENT_TEXTURE                       = 0x829F unless const_defined? :FRAGMENT_TEXTURE
    COMPUTE_TEXTURE                        = 0x82A0 unless const_defined? :COMPUTE_TEXTURE
    TEXTURE_SHADOW                         = 0x82A1 unless const_defined? :TEXTURE_SHADOW
    TEXTURE_GATHER                         = 0x82A2 unless const_defined? :TEXTURE_GATHER
    TEXTURE_GATHER_SHADOW                  = 0x82A3 unless const_defined? :TEXTURE_GATHER_SHADOW
    SHADER_IMAGE_LOAD                      = 0x82A4 unless const_defined? :SHADER_IMAGE_LOAD
    SHADER_IMAGE_STORE                     = 0x82A5 unless const_defined? :SHADER_IMAGE_STORE
    SHADER_IMAGE_ATOMIC                    = 0x82A6 unless const_defined? :SHADER_IMAGE_ATOMIC
    IMAGE_TEXEL_SIZE                       = 0x82A7 unless const_defined? :IMAGE_TEXEL_SIZE
    IMAGE_COMPATIBILITY_CLASS              = 0x82A8 unless const_defined? :IMAGE_COMPATIBILITY_CLASS
    IMAGE_PIXEL_FORMAT                     = 0x82A9 unless const_defined? :IMAGE_PIXEL_FORMAT
    IMAGE_PIXEL_TYPE                       = 0x82AA unless const_defined? :IMAGE_PIXEL_TYPE
    SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST    = 0x82AC unless const_defined? :SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
    SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST  = 0x82AD unless const_defined? :SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
    SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE   = 0x82AE unless const_defined? :SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
    SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 0x82AF unless const_defined? :SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
    TEXTURE_COMPRESSED_BLOCK_WIDTH         = 0x82B1 unless const_defined? :TEXTURE_COMPRESSED_BLOCK_WIDTH
    TEXTURE_COMPRESSED_BLOCK_HEIGHT        = 0x82B2 unless const_defined? :TEXTURE_COMPRESSED_BLOCK_HEIGHT
    TEXTURE_COMPRESSED_BLOCK_SIZE          = 0x82B3 unless const_defined? :TEXTURE_COMPRESSED_BLOCK_SIZE
    CLEAR_BUFFER                           = 0x82B4 unless const_defined? :CLEAR_BUFFER
    TEXTURE_VIEW                           = 0x82B5 unless const_defined? :TEXTURE_VIEW
    VIEW_COMPATIBILITY_CLASS               = 0x82B6 unless const_defined? :VIEW_COMPATIBILITY_CLASS
    FULL_SUPPORT                           = 0x82B7 unless const_defined? :FULL_SUPPORT
    CAVEAT_SUPPORT                         = 0x82B8 unless const_defined? :CAVEAT_SUPPORT
    IMAGE_CLASS_4_X_32                     = 0x82B9 unless const_defined? :IMAGE_CLASS_4_X_32
    IMAGE_CLASS_2_X_32                     = 0x82BA unless const_defined? :IMAGE_CLASS_2_X_32
    IMAGE_CLASS_1_X_32                     = 0x82BB unless const_defined? :IMAGE_CLASS_1_X_32
    IMAGE_CLASS_4_X_16                     = 0x82BC unless const_defined? :IMAGE_CLASS_4_X_16
    IMAGE_CLASS_2_X_16                     = 0x82BD unless const_defined? :IMAGE_CLASS_2_X_16
    IMAGE_CLASS_1_X_16                     = 0x82BE unless const_defined? :IMAGE_CLASS_1_X_16
    IMAGE_CLASS_4_X_8                      = 0x82BF unless const_defined? :IMAGE_CLASS_4_X_8
    IMAGE_CLASS_2_X_8                      = 0x82C0 unless const_defined? :IMAGE_CLASS_2_X_8
    IMAGE_CLASS_1_X_8                      = 0x82C1 unless const_defined? :IMAGE_CLASS_1_X_8
    IMAGE_CLASS_11_11_10                   = 0x82C2 unless const_defined? :IMAGE_CLASS_11_11_10
    IMAGE_CLASS_10_10_10_2                 = 0x82C3 unless const_defined? :IMAGE_CLASS_10_10_10_2
    VIEW_CLASS_128_BITS                    = 0x82C4 unless const_defined? :VIEW_CLASS_128_BITS
    VIEW_CLASS_96_BITS                     = 0x82C5 unless const_defined? :VIEW_CLASS_96_BITS
    VIEW_CLASS_64_BITS                     = 0x82C6 unless const_defined? :VIEW_CLASS_64_BITS
    VIEW_CLASS_48_BITS                     = 0x82C7 unless const_defined? :VIEW_CLASS_48_BITS
    VIEW_CLASS_32_BITS                     = 0x82C8 unless const_defined? :VIEW_CLASS_32_BITS
    VIEW_CLASS_24_BITS                     = 0x82C9 unless const_defined? :VIEW_CLASS_24_BITS
    VIEW_CLASS_16_BITS                     = 0x82CA unless const_defined? :VIEW_CLASS_16_BITS
    VIEW_CLASS_8_BITS                      = 0x82CB unless const_defined? :VIEW_CLASS_8_BITS
    VIEW_CLASS_S3TC_DXT1_RGB               = 0x82CC unless const_defined? :VIEW_CLASS_S3TC_DXT1_RGB
    VIEW_CLASS_S3TC_DXT1_RGBA              = 0x82CD unless const_defined? :VIEW_CLASS_S3TC_DXT1_RGBA
    VIEW_CLASS_S3TC_DXT3_RGBA              = 0x82CE unless const_defined? :VIEW_CLASS_S3TC_DXT3_RGBA
    VIEW_CLASS_S3TC_DXT5_RGBA              = 0x82CF unless const_defined? :VIEW_CLASS_S3TC_DXT5_RGBA
    VIEW_CLASS_RGTC1_RED                   = 0x82D0 unless const_defined? :VIEW_CLASS_RGTC1_RED
    VIEW_CLASS_RGTC2_RG                    = 0x82D1 unless const_defined? :VIEW_CLASS_RGTC2_RG
    VIEW_CLASS_BPTC_UNORM                  = 0x82D2 unless const_defined? :VIEW_CLASS_BPTC_UNORM
    VIEW_CLASS_BPTC_FLOAT                  = 0x82D3 unless const_defined? :VIEW_CLASS_BPTC_FLOAT
    TEXTURE_RECTANGLE                      = 0x84F5 unless const_defined? :TEXTURE_RECTANGLE
    TEXTURE_1D_ARRAY                       = 0x8C18 unless const_defined? :TEXTURE_1D_ARRAY
    TEXTURE_2D_ARRAY                       = 0x8C1A unless const_defined? :TEXTURE_2D_ARRAY
    TEXTURE_BUFFER                         = 0x8C2A unless const_defined? :TEXTURE_BUFFER
    RENDERBUFFER                           = 0x8D41 unless const_defined? :RENDERBUFFER
    TEXTURE_CUBE_MAP_ARRAY                 = 0x9009 unless const_defined? :TEXTURE_CUBE_MAP_ARRAY
    TEXTURE_2D_MULTISAMPLE                 = 0x9100 unless const_defined? :TEXTURE_2D_MULTISAMPLE
    TEXTURE_2D_MULTISAMPLE_ARRAY           = 0x9102 unless const_defined? :TEXTURE_2D_MULTISAMPLE_ARRAY
    NUM_SAMPLE_COUNTS                      = 0x9380 unless const_defined? :NUM_SAMPLE_COUNTS
  end
end

module GL_ARB_internalformat_query2
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetInternalformati64v, [ :uint, :uint, :uint, :int, :pointer ], :void]
  end
end