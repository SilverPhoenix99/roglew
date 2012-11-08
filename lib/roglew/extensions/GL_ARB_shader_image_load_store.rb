module Roglew
  module GL
    ALL_BARRIER_BITS                              = 0xFFFFFFFF unless const_defined? :ALL_BARRIER_BITS
    ATOMIC_COUNTER_BARRIER_BIT                    = 0x00001000 unless const_defined? :ATOMIC_COUNTER_BARRIER_BIT
    BUFFER_UPDATE_BARRIER_BIT                     = 0x00000200 unless const_defined? :BUFFER_UPDATE_BARRIER_BIT
    COMMAND_BARRIER_BIT                           = 0x00000040 unless const_defined? :COMMAND_BARRIER_BIT
    ELEMENT_ARRAY_BARRIER_BIT                     = 0x00000002 unless const_defined? :ELEMENT_ARRAY_BARRIER_BIT
    FRAMEBUFFER_BARRIER_BIT                       = 0x00000400 unless const_defined? :FRAMEBUFFER_BARRIER_BIT
    IMAGE_1D                                      = 0x904C unless const_defined? :IMAGE_1D
    IMAGE_1D_ARRAY                                = 0x9052 unless const_defined? :IMAGE_1D_ARRAY
    IMAGE_2D                                      = 0x904D unless const_defined? :IMAGE_2D
    IMAGE_2D_ARRAY                                = 0x9053 unless const_defined? :IMAGE_2D_ARRAY
    IMAGE_2D_MULTISAMPLE                          = 0x9055 unless const_defined? :IMAGE_2D_MULTISAMPLE
    IMAGE_2D_MULTISAMPLE_ARRAY                    = 0x9056 unless const_defined? :IMAGE_2D_MULTISAMPLE_ARRAY
    IMAGE_2D_RECT                                 = 0x904F unless const_defined? :IMAGE_2D_RECT
    IMAGE_3D                                      = 0x904E unless const_defined? :IMAGE_3D
    IMAGE_BINDING_ACCESS                          = 0x8F3E unless const_defined? :IMAGE_BINDING_ACCESS
    IMAGE_BINDING_FORMAT                          = 0x906E unless const_defined? :IMAGE_BINDING_FORMAT
    IMAGE_BINDING_LAYER                           = 0x8F3D unless const_defined? :IMAGE_BINDING_LAYER
    IMAGE_BINDING_LAYERED                         = 0x8F3C unless const_defined? :IMAGE_BINDING_LAYERED
    IMAGE_BINDING_LEVEL                           = 0x8F3B unless const_defined? :IMAGE_BINDING_LEVEL
    IMAGE_BINDING_NAME                            = 0x8F3A unless const_defined? :IMAGE_BINDING_NAME
    IMAGE_BUFFER                                  = 0x9051 unless const_defined? :IMAGE_BUFFER
    IMAGE_CUBE                                    = 0x9050 unless const_defined? :IMAGE_CUBE
    IMAGE_CUBE_MAP_ARRAY                          = 0x9054 unless const_defined? :IMAGE_CUBE_MAP_ARRAY
    IMAGE_FORMAT_COMPATIBILITY_BY_CLASS           = 0x90C9 unless const_defined? :IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
    IMAGE_FORMAT_COMPATIBILITY_BY_SIZE            = 0x90C8 unless const_defined? :IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
    IMAGE_FORMAT_COMPATIBILITY_TYPE               = 0x90C7 unless const_defined? :IMAGE_FORMAT_COMPATIBILITY_TYPE
    INT_IMAGE_1D                                  = 0x9057 unless const_defined? :INT_IMAGE_1D
    INT_IMAGE_1D_ARRAY                            = 0x905D unless const_defined? :INT_IMAGE_1D_ARRAY
    INT_IMAGE_2D                                  = 0x9058 unless const_defined? :INT_IMAGE_2D
    INT_IMAGE_2D_ARRAY                            = 0x905E unless const_defined? :INT_IMAGE_2D_ARRAY
    INT_IMAGE_2D_MULTISAMPLE                      = 0x9060 unless const_defined? :INT_IMAGE_2D_MULTISAMPLE
    INT_IMAGE_2D_MULTISAMPLE_ARRAY                = 0x9061 unless const_defined? :INT_IMAGE_2D_MULTISAMPLE_ARRAY
    INT_IMAGE_2D_RECT                             = 0x905A unless const_defined? :INT_IMAGE_2D_RECT
    INT_IMAGE_3D                                  = 0x9059 unless const_defined? :INT_IMAGE_3D
    INT_IMAGE_BUFFER                              = 0x905C unless const_defined? :INT_IMAGE_BUFFER
    INT_IMAGE_CUBE                                = 0x905B unless const_defined? :INT_IMAGE_CUBE
    INT_IMAGE_CUBE_MAP_ARRAY                      = 0x905F unless const_defined? :INT_IMAGE_CUBE_MAP_ARRAY
    MAX_COMBINED_IMAGE_UNIFORMS                   = 0x90CF unless const_defined? :MAX_COMBINED_IMAGE_UNIFORMS
    MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8F39 unless const_defined? :MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
    MAX_FRAGMENT_IMAGE_UNIFORMS                   = 0x90CE unless const_defined? :MAX_FRAGMENT_IMAGE_UNIFORMS
    MAX_GEOMETRY_IMAGE_UNIFORMS                   = 0x90CD unless const_defined? :MAX_GEOMETRY_IMAGE_UNIFORMS
    MAX_IMAGE_SAMPLES                             = 0x906D unless const_defined? :MAX_IMAGE_SAMPLES
    MAX_IMAGE_UNITS                               = 0x8F38 unless const_defined? :MAX_IMAGE_UNITS
    MAX_TESS_CONTROL_IMAGE_UNIFORMS               = 0x90CB unless const_defined? :MAX_TESS_CONTROL_IMAGE_UNIFORMS
    MAX_TESS_EVALUATION_IMAGE_UNIFORMS            = 0x90CC unless const_defined? :MAX_TESS_EVALUATION_IMAGE_UNIFORMS
    MAX_VERTEX_IMAGE_UNIFORMS                     = 0x90CA unless const_defined? :MAX_VERTEX_IMAGE_UNIFORMS
    PIXEL_BUFFER_BARRIER_BIT                      = 0x00000080 unless const_defined? :PIXEL_BUFFER_BARRIER_BIT
    SHADER_IMAGE_ACCESS_BARRIER_BIT               = 0x00000020 unless const_defined? :SHADER_IMAGE_ACCESS_BARRIER_BIT
    TEXTURE_FETCH_BARRIER_BIT                     = 0x00000008 unless const_defined? :TEXTURE_FETCH_BARRIER_BIT
    TEXTURE_UPDATE_BARRIER_BIT                    = 0x00000100 unless const_defined? :TEXTURE_UPDATE_BARRIER_BIT
    TRANSFORM_FEEDBACK_BARRIER_BIT                = 0x00000800 unless const_defined? :TRANSFORM_FEEDBACK_BARRIER_BIT
    UNIFORM_BARRIER_BIT                           = 0x00000004 unless const_defined? :UNIFORM_BARRIER_BIT
    UNSIGNED_INT_IMAGE_1D                         = 0x9062 unless const_defined? :UNSIGNED_INT_IMAGE_1D
    UNSIGNED_INT_IMAGE_1D_ARRAY                   = 0x9068 unless const_defined? :UNSIGNED_INT_IMAGE_1D_ARRAY
    UNSIGNED_INT_IMAGE_2D                         = 0x9063 unless const_defined? :UNSIGNED_INT_IMAGE_2D
    UNSIGNED_INT_IMAGE_2D_ARRAY                   = 0x9069 unless const_defined? :UNSIGNED_INT_IMAGE_2D_ARRAY
    UNSIGNED_INT_IMAGE_2D_MULTISAMPLE             = 0x906B unless const_defined? :UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
    UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY       = 0x906C unless const_defined? :UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
    UNSIGNED_INT_IMAGE_2D_RECT                    = 0x9065 unless const_defined? :UNSIGNED_INT_IMAGE_2D_RECT
    UNSIGNED_INT_IMAGE_3D                         = 0x9064 unless const_defined? :UNSIGNED_INT_IMAGE_3D
    UNSIGNED_INT_IMAGE_BUFFER                     = 0x9067 unless const_defined? :UNSIGNED_INT_IMAGE_BUFFER
    UNSIGNED_INT_IMAGE_CUBE                       = 0x9066 unless const_defined? :UNSIGNED_INT_IMAGE_CUBE
    UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY             = 0x906A unless const_defined? :UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
    VERTEX_ATTRIB_ARRAY_BARRIER_BIT               = 0x00000001 unless const_defined? :VERTEX_ATTRIB_ARRAY_BARRIER_BIT
  end
end

module GL_ARB_shader_image_load_store
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindImageTexture, [ :uint, :uint, :int, :uchar, :int, :uint, :uint ], :void],
              [:glMemoryBarrier, [ :uint ], :void]
  end
end

