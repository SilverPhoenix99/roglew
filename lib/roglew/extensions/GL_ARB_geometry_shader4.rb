module Roglew
  module GL
    FRAMEBUFFER_ATTACHMENT_LAYERED_ARB       ||= 0x8DA7
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER     ||= 0x8CD4
    FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB   ||= 0x8DA9
    FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB ||= 0x8DA8
    GEOMETRY_INPUT_TYPE_ARB                  ||= 0x8DDB
    GEOMETRY_OUTPUT_TYPE_ARB                 ||= 0x8DDC
    GEOMETRY_SHADER_ARB                      ||= 0x8DD9
    GEOMETRY_VERTICES_OUT_ARB                ||= 0x8DDA
    LINE_STRIP_ADJACENCY_ARB                 ||= 0xB
    LINES_ADJACENCY_ARB                      ||= 0xA
    MAX_GEOMETRY_OUTPUT_VERTICES_ARB         ||= 0x8DE0
    MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB     ||= 0x8C29
    MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB ||= 0x8DE1
    MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB      ||= 0x8DDF
    MAX_GEOMETRY_VARYING_COMPONENTS_ARB      ||= 0x8DDD
    MAX_VERTEX_VARYING_COMPONENTS_ARB        ||= 0x8DDE
    PROGRAM_POINT_SIZE_ARB                   ||= 0x8642
    TRIANGLE_STRIP_ADJACENCY_ARB             ||= 0xD
    TRIANGLES_ADJACENCY_ARB                  ||= 0xC
  end
end

module GL_ARB_geometry_shader4
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glFramebufferTextureARB, [ :uint, :uint, :uint, :int ], :void],
        [:glFramebufferTextureFaceARB, [ :uint, :uint, :uint, :int, :uint ], :void],
        [:glFramebufferTextureLayerARB, [ :uint, :uint, :uint, :int, :int ], :void],
        [:glProgramParameteriARB, [ :uint, :uint, :int ], :void]
    ]
  end
end