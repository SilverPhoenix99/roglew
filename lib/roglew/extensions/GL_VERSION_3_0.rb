module Roglew
  module GL
    ALPHA_INTEGER                                 ||= 0x8D97
    BGR_INTEGER                                   ||= 0x8D9A
    BGRA_INTEGER                                  ||= 0x8D9B
    BLUE_INTEGER                                  ||= 0x8D96
    CLAMP_FRAGMENT_COLOR                          ||= 0x891B
    CLAMP_READ_COLOR                              ||= 0x891C
    CLAMP_VERTEX_COLOR                            ||= 0x891A
    CLIP_DISTANCE0                                ||= CLIP_PLANE0
    CLIP_DISTANCE1                                ||= CLIP_PLANE1
    CLIP_DISTANCE2                                ||= CLIP_PLANE2
    CLIP_DISTANCE3                                ||= CLIP_PLANE3
    CLIP_DISTANCE4                                ||= CLIP_PLANE4
    CLIP_DISTANCE5                                ||= CLIP_PLANE5
    COMPARE_R_TO_TEXTURE_ARB                      ||= 0x884E
    COMPARE_REF_TO_TEXTURE                        ||= COMPARE_R_TO_TEXTURE_ARB
    COMPRESSED_RED                                ||= 0x8225
    COMPRESSED_RG                                 ||= 0x8226
    CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT           ||= 0x0001
    CONTEXT_FLAGS                                 ||= 0x821E
    DEPTH_BUFFER                                  ||= 0x8223
    FIXED_ONLY                                    ||= 0x891D
    GREEN_INTEGER                                 ||= 0x8D95
    INT_SAMPLER_1D                                ||= 0x8DC9
    INT_SAMPLER_1D_ARRAY                          ||= 0x8DCE
    INT_SAMPLER_2D                                ||= 0x8DCA
    INT_SAMPLER_2D_ARRAY                          ||= 0x8DCF
    INT_SAMPLER_3D                                ||= 0x8DCB
    INT_SAMPLER_CUBE                              ||= 0x8DCC
    INTERLEAVED_ATTRIBS                           ||= 0x8C8C
    MAJOR_VERSION                                 ||= 0x821B
    MAX_ARRAY_TEXTURE_LAYERS                      ||= 0x88FF
    MAX_CLIP_DISTANCES                            ||= MAX_CLIP_PLANES
    MAX_PROGRAM_TEXEL_OFFSET                      ||= 0x8905
    MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS ||= 0x8C8A
    MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS       ||= 0x8C8B
    MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS    ||= 0x8C80
    MAX_VARYING_COMPONENTS                        ||= MAX_VARYING_FLOATS
    MIN_PROGRAM_TEXEL_OFFSET                      ||= 0x8904
    MINOR_VERSION                                 ||= 0x821C
    NUM_EXTENSIONS                                ||= 0x821D
    PRIMITIVES_GENERATED                          ||= 0x8C87
    PROXY_TEXTURE_1D_ARRAY                        ||= 0x8C19
    PROXY_TEXTURE_2D_ARRAY                        ||= 0x8C1B
    QUERY_BY_REGION_NO_WAIT                       ||= 0x8E16
    QUERY_BY_REGION_WAIT                          ||= 0x8E15
    QUERY_NO_WAIT                                 ||= 0x8E14
    QUERY_WAIT                                    ||= 0x8E13
    R11F_G11F_B10F                                ||= 0x8C3A
    RASTERIZER_DISCARD                            ||= 0x8C89
    RED_INTEGER                                   ||= 0x8D94
    RGB_INTEGER                                   ||= 0x8D98
    RGB16F                                        ||= 0x881B
    RGB16I                                        ||= 0x8D89
    RGB16UI                                       ||= 0x8D77
    RGB32F                                        ||= 0x8815
    RGB32I                                        ||= 0x8D83
    RGB32UI                                       ||= 0x8D71
    RGB8I                                         ||= 0x8D8F
    RGB8UI                                        ||= 0x8D7D
    RGB9_E5                                       ||= 0x8C3D
    RGBA_INTEGER                                  ||= 0x8D99
    RGBA16F                                       ||= 0x881A
    RGBA16I                                       ||= 0x8D88
    RGBA16UI                                      ||= 0x8D76
    RGBA32F                                       ||= 0x8814
    RGBA32I                                       ||= 0x8D82
    RGBA32UI                                      ||= 0x8D70
    RGBA8I                                        ||= 0x8D8E
    RGBA8UI                                       ||= 0x8D7C
    SAMPLER_1D_ARRAY                              ||= 0x8DC0
    SAMPLER_1D_ARRAY_SHADOW                       ||= 0x8DC3
    SAMPLER_2D_ARRAY                              ||= 0x8DC1
    SAMPLER_2D_ARRAY_SHADOW                       ||= 0x8DC4
    SAMPLER_CUBE_SHADOW                           ||= 0x8DC5
    SEPARATE_ATTRIBS                              ||= 0x8C8D
    STENCIL_BUFFER                                ||= 0x8224
    TEXTURE_1D_ARRAY                              ||= 0x8C18
    TEXTURE_2D_ARRAY                              ||= 0x8C1A
    TEXTURE_ALPHA_TYPE                            ||= 0x8C13
    TEXTURE_BINDING_1D_ARRAY                      ||= 0x8C1C
    TEXTURE_BINDING_2D_ARRAY                      ||= 0x8C1D
    TEXTURE_BLUE_TYPE                             ||= 0x8C12
    TEXTURE_DEPTH_TYPE                            ||= 0x8C16
    TEXTURE_GREEN_TYPE                            ||= 0x8C11
    TEXTURE_INTENSITY_TYPE                        ||= 0x8C15
    TEXTURE_LUMINANCE_TYPE                        ||= 0x8C14
    TEXTURE_RED_TYPE                              ||= 0x8C10
    TEXTURE_SHARED_SIZE                           ||= 0x8C3F
    TRANSFORM_FEEDBACK_BUFFER                     ||= 0x8C8E
    TRANSFORM_FEEDBACK_BUFFER_BINDING             ||= 0x8C8F
    TRANSFORM_FEEDBACK_BUFFER_MODE                ||= 0x8C7F
    TRANSFORM_FEEDBACK_BUFFER_SIZE                ||= 0x8C85
    TRANSFORM_FEEDBACK_BUFFER_START               ||= 0x8C84
    TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN         ||= 0x8C88
    TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH         ||= 0x8C76
    TRANSFORM_FEEDBACK_VARYINGS                   ||= 0x8C83
    UNSIGNED_INT_10F_11F_11F_REV                  ||= 0x8C3B
    UNSIGNED_INT_5_9_9_9_REV                      ||= 0x8C3E
    UNSIGNED_INT_SAMPLER_1D                       ||= 0x8DD1
    UNSIGNED_INT_SAMPLER_1D_ARRAY                 ||= 0x8DD6
    UNSIGNED_INT_SAMPLER_2D                       ||= 0x8DD2
    UNSIGNED_INT_SAMPLER_2D_ARRAY                 ||= 0x8DD7
    UNSIGNED_INT_SAMPLER_3D                       ||= 0x8DD3
    UNSIGNED_INT_SAMPLER_CUBE                     ||= 0x8DD4
    UNSIGNED_INT_VEC2                             ||= 0x8DC6
    UNSIGNED_INT_VEC3                             ||= 0x8DC7
    UNSIGNED_INT_VEC4                             ||= 0x8DC8
    VERTEX_ATTRIB_ARRAY_INTEGER                   ||= 0x88FD
  end
end

module GL_VERSION_3_0
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [ :glBeginConditionalRender, [ :uint, :uint ], :void],
        [ :glBeginTransformFeedback, [ :uint ], :void],
        [ :glBindFragDataLocation, [ :uint, :uint, :string ], :void],
        [ :glClampColor, [ :uint, :uint ], :void],
        [ :glClearBufferfi, [ :uint, :int, :float, :int ], :void],
        [ :glClearBufferfv, [ :uint, :int, :pointer ], :void],
        [ :glClearBufferiv, [ :uint, :int, :pointer ], :void],
        [ :glClearBufferuiv, [ :uint, :int, :pointer ], :void],
        [ :glColorMaski, [ :uint, :uchar, :uchar, :uchar, :uchar ], :void],
        [ :glDisablei, [ :uint, :uint ], :void],
        [ :glEnablei, [ :uint, :uint ], :void],
        [ :glEndConditionalRender, [], :void],
        [ :glEndTransformFeedback, [], :void],
        [ :glGetBooleani_v, [ :uint, :uint, :pointer ], :void],
        [ :glGetFragDataLocation, [ :uint, :string ], :int],
        [ :glGetStringi, [ :uint, :uint ], :string],
        [ :glGetTexParameterIiv, [ :uint, :uint, :pointer ], :void],
        [ :glGetTexParameterIuiv, [ :uint, :uint, :pointer ], :void],
        [ :glGetTransformFeedbackVarying, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void],
        [ :glGetUniformuiv, [ :uint, :int, :pointer ], :void],
        [ :glGetVertexAttribIiv, [ :uint, :uint, :pointer ], :void],
        [ :glGetVertexAttribIuiv, [ :uint, :uint, :pointer ], :void],
        [ :glIsEnabledi, [ :uint, :uint ], :uchar],
        [ :glTexParameterIiv, [ :uint, :uint, :pointer ], :void],
        [ :glTexParameterIuiv, [ :uint, :uint, :pointer ], :void],
        [ :glTransformFeedbackVaryings, [ :uint, :int, :pointer, :uint ], :void],
        [ :glUniform1ui, [ :int, :uint ], :void],
        [ :glUniform1uiv, [ :int, :int, :pointer ], :void],
        [ :glUniform2ui, [ :int, :uint, :uint ], :void],
        [ :glUniform2uiv, [ :int, :int, :pointer ], :void],
        [ :glUniform3ui, [ :int, :uint, :uint, :uint ], :void],
        [ :glUniform3uiv, [ :int, :int, :pointer ], :void],
        [ :glUniform4ui, [ :int, :uint, :uint, :uint, :uint ], :void],
        [ :glUniform4uiv, [ :int, :int, :pointer ], :void],
        [ :glVertexAttribI1i, [ :uint, :int ], :void],
        [ :glVertexAttribI1iv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI1ui, [ :uint, :uint ], :void],
        [ :glVertexAttribI1uiv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI2i, [ :uint, :int, :int ], :void],
        [ :glVertexAttribI2iv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI2ui, [ :uint, :uint, :uint ], :void],
        [ :glVertexAttribI2uiv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI3i, [ :uint, :int, :int, :int ], :void],
        [ :glVertexAttribI3iv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI3ui, [ :uint, :uint, :uint, :uint ], :void],
        [ :glVertexAttribI3uiv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI4bv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI4i, [ :uint, :int, :int, :int, :int ], :void],
        [ :glVertexAttribI4iv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI4sv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI4ubv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI4ui, [ :uint, :uint, :uint, :uint, :uint ], :void],
        [ :glVertexAttribI4uiv, [ :uint, :pointer ], :void],
        [ :glVertexAttribI4usv, [ :uint, :pointer ], :void],
        [ :glVertexAttribIPointer, [ :uint, :int, :uint, :int, :pointer ], :void]
    ]
  end
end

#GL_VERSION_3_0 implicitly requires:
#  GL_ARB_framebuffer_object
#  GL_ARB_map_buffer_range
#  GL_ARB_vertex_array_object
