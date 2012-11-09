module Roglew
  module GL
    FRAMEBUFFER_ATTACHMENT_LAYERED_EXT       ||= 0x8DA7
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT ||= 0x8CD4
    FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT   ||= 0x8DA9
    FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT ||= 0x8DA8
    GEOMETRY_INPUT_TYPE_EXT                  ||= 0x8DDB
    GEOMETRY_OUTPUT_TYPE_EXT                 ||= 0x8DDC
    GEOMETRY_SHADER_EXT                      ||= 0x8DD9
    GEOMETRY_VERTICES_OUT_EXT                ||= 0x8DDA
    LINE_STRIP_ADJACENCY_EXT                 ||= 0xB
    LINES_ADJACENCY_EXT                      ||= 0xA
    MAX_GEOMETRY_OUTPUT_VERTICES_EXT         ||= 0x8DE0
    MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT     ||= 0x8C29
    MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT ||= 0x8DE1
    MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT      ||= 0x8DDF
    MAX_GEOMETRY_VARYING_COMPONENTS_EXT      ||= 0x8DDD
    MAX_VARYING_COMPONENTS_EXT               ||= 0x8B4B
    MAX_VERTEX_VARYING_COMPONENTS_EXT        ||= 0x8DDE
    PROGRAM_POINT_SIZE_EXT                   ||= 0x8642
    TRIANGLE_STRIP_ADJACENCY_EXT             ||= 0xD
    TRIANGLES_ADJACENCY_EXT                  ||= 0xC
  end
end

module GL_EXT_geometry_shader4
  module RenderContext
    include Roglew::GLExtension

    functions [:glFramebufferTextureEXT, [ :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTextureFaceEXT, [ :uint, :uint, :uint, :int, :uint ], :void],
              [:glProgramParameteriEXT, [ :uint, :uint, :int ], :void]
  end
end

