module Roglew
  module GL
    CONTEXT_COMPATIBILITY_PROFILE_BIT    ||= 0x00000002
    CONTEXT_CORE_PROFILE_BIT             ||= 0x00000001
    CONTEXT_PROFILE_MASK                 ||= 0x9126
    FRAMEBUFFER_ATTACHMENT_LAYERED       ||= 0x8DA7
    FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS ||= 0x8DA8
    GEOMETRY_INPUT_TYPE                  ||= 0x8917
    GEOMETRY_OUTPUT_TYPE                 ||= 0x8918
    GEOMETRY_SHADER                      ||= 0x8DD9
    GEOMETRY_VERTICES_OUT                ||= 0x8916
    LINE_STRIP_ADJACENCY                 ||= 0x000B
    LINES_ADJACENCY                      ||= 0x000A
    MAX_FRAGMENT_INPUT_COMPONENTS        ||= 0x9125
    MAX_GEOMETRY_INPUT_COMPONENTS        ||= 0x9123
    MAX_GEOMETRY_OUTPUT_COMPONENTS       ||= 0x9124
    MAX_GEOMETRY_OUTPUT_VERTICES         ||= 0x8DE0
    MAX_GEOMETRY_TEXTURE_IMAGE_UNITS     ||= 0x8C29
    MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS ||= 0x8DE1
    MAX_GEOMETRY_UNIFORM_COMPONENTS      ||= 0x8DDF
    MAX_VERTEX_OUTPUT_COMPONENTS         ||= 0x9122
    PROGRAM_POINT_SIZE                   ||= 0x8642
    TRIANGLE_STRIP_ADJACENCY             ||= 0x000D
    TRIANGLES_ADJACENCY                  ||= 0x000C

  end
end

module GL_VERSION_3_2
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [ :glFramebufferTexture, [ :uint, :uint, :uint, :int ], :void ],
        [ :glGetBufferParameteri64v, [ :uint, :uint, :pointer ], :void ],
        [ :glGetInteger64i_v, [ :uint, :uint, :pointer ], :void ]
    ]
  end
end

#GL_VERSION_3_2 implicitly requires:
#  GL_ARB_draw_elements_base_vertex
#  GL_ARB_provoking_vertex
#  GL_ARB_sync
#  GL_ARB_texture_multisample
