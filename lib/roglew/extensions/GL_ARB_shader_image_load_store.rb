module Roglew
  module GL
    ALL_BARRIER_BITS                              ||= 0xFFFFFFFF
    ATOMIC_COUNTER_BARRIER_BIT                    ||= 0x00001000
    BUFFER_UPDATE_BARRIER_BIT                     ||= 0x00000200
    COMMAND_BARRIER_BIT                           ||= 0x00000040
    ELEMENT_ARRAY_BARRIER_BIT                     ||= 0x00000002
    FRAMEBUFFER_BARRIER_BIT                       ||= 0x00000400
    IMAGE_1D                                      ||= 0x904C
    IMAGE_1D_ARRAY                                ||= 0x9052
    IMAGE_2D                                      ||= 0x904D
    IMAGE_2D_ARRAY                                ||= 0x9053
    IMAGE_2D_MULTISAMPLE                          ||= 0x9055
    IMAGE_2D_MULTISAMPLE_ARRAY                    ||= 0x9056
    IMAGE_2D_RECT                                 ||= 0x904F
    IMAGE_3D                                      ||= 0x904E
    IMAGE_BINDING_ACCESS                          ||= 0x8F3E
    IMAGE_BINDING_FORMAT                          ||= 0x906E
    IMAGE_BINDING_LAYER                           ||= 0x8F3D
    IMAGE_BINDING_LAYERED                         ||= 0x8F3C
    IMAGE_BINDING_LEVEL                           ||= 0x8F3B
    IMAGE_BINDING_NAME                            ||= 0x8F3A
    IMAGE_BUFFER                                  ||= 0x9051
    IMAGE_CUBE                                    ||= 0x9050
    IMAGE_CUBE_MAP_ARRAY                          ||= 0x9054
    IMAGE_FORMAT_COMPATIBILITY_BY_CLASS           ||= 0x90C9
    IMAGE_FORMAT_COMPATIBILITY_BY_SIZE            ||= 0x90C8
    IMAGE_FORMAT_COMPATIBILITY_TYPE               ||= 0x90C7
    INT_IMAGE_1D                                  ||= 0x9057
    INT_IMAGE_1D_ARRAY                            ||= 0x905D
    INT_IMAGE_2D                                  ||= 0x9058
    INT_IMAGE_2D_ARRAY                            ||= 0x905E
    INT_IMAGE_2D_MULTISAMPLE                      ||= 0x9060
    INT_IMAGE_2D_MULTISAMPLE_ARRAY                ||= 0x9061
    INT_IMAGE_2D_RECT                             ||= 0x905A
    INT_IMAGE_3D                                  ||= 0x9059
    INT_IMAGE_BUFFER                              ||= 0x905C
    INT_IMAGE_CUBE                                ||= 0x905B
    INT_IMAGE_CUBE_MAP_ARRAY                      ||= 0x905F
    MAX_COMBINED_IMAGE_UNIFORMS                   ||= 0x90CF
    MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS ||= 0x8F39
    MAX_FRAGMENT_IMAGE_UNIFORMS                   ||= 0x90CE
    MAX_GEOMETRY_IMAGE_UNIFORMS                   ||= 0x90CD
    MAX_IMAGE_SAMPLES                             ||= 0x906D
    MAX_IMAGE_UNITS                               ||= 0x8F38
    MAX_TESS_CONTROL_IMAGE_UNIFORMS               ||= 0x90CB
    MAX_TESS_EVALUATION_IMAGE_UNIFORMS            ||= 0x90CC
    MAX_VERTEX_IMAGE_UNIFORMS                     ||= 0x90CA
    PIXEL_BUFFER_BARRIER_BIT                      ||= 0x00000080
    SHADER_IMAGE_ACCESS_BARRIER_BIT               ||= 0x00000020
    TEXTURE_FETCH_BARRIER_BIT                     ||= 0x00000008
    TEXTURE_UPDATE_BARRIER_BIT                    ||= 0x00000100
    TRANSFORM_FEEDBACK_BARRIER_BIT                ||= 0x00000800
    UNIFORM_BARRIER_BIT                           ||= 0x00000004
    UNSIGNED_INT_IMAGE_1D                         ||= 0x9062
    UNSIGNED_INT_IMAGE_1D_ARRAY                   ||= 0x9068
    UNSIGNED_INT_IMAGE_2D                         ||= 0x9063
    UNSIGNED_INT_IMAGE_2D_ARRAY                   ||= 0x9069
    UNSIGNED_INT_IMAGE_2D_MULTISAMPLE             ||= 0x906B
    UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY       ||= 0x906C
    UNSIGNED_INT_IMAGE_2D_RECT                    ||= 0x9065
    UNSIGNED_INT_IMAGE_3D                         ||= 0x9064
    UNSIGNED_INT_IMAGE_BUFFER                     ||= 0x9067
    UNSIGNED_INT_IMAGE_CUBE                       ||= 0x9066
    UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY             ||= 0x906A
    VERTEX_ATTRIB_ARRAY_BARRIER_BIT               ||= 0x00000001
  end
end

module GL_ARB_shader_image_load_store
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBindImageTexture, [ :uint, :uint, :int, :uchar, :int, :uint, :uint ], :void],
        [:glMemoryBarrier, [ :uint ], :void]
    ]
  end
end

