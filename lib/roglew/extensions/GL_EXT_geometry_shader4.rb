module Roglew
  module GL
    FRAMEBUFFER_ATTACHMENT_LAYERED_EXT       = 0x8DA7 unless const_defined? :FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = 0x8CD4 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
    FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT   = 0x8DA9 unless const_defined? :FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
    FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT = 0x8DA8 unless const_defined? :FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
    GEOMETRY_INPUT_TYPE_EXT                  = 0x8DDB unless const_defined? :GEOMETRY_INPUT_TYPE_EXT
    GEOMETRY_OUTPUT_TYPE_EXT                 = 0x8DDC unless const_defined? :GEOMETRY_OUTPUT_TYPE_EXT
    GEOMETRY_SHADER_EXT                      = 0x8DD9 unless const_defined? :GEOMETRY_SHADER_EXT
    GEOMETRY_VERTICES_OUT_EXT                = 0x8DDA unless const_defined? :GEOMETRY_VERTICES_OUT_EXT
    LINE_STRIP_ADJACENCY_EXT                 = 0xB unless const_defined? :LINE_STRIP_ADJACENCY_EXT
    LINES_ADJACENCY_EXT                      = 0xA unless const_defined? :LINES_ADJACENCY_EXT
    MAX_GEOMETRY_OUTPUT_VERTICES_EXT         = 0x8DE0 unless const_defined? :MAX_GEOMETRY_OUTPUT_VERTICES_EXT
    MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT     = 0x8C29 unless const_defined? :MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
    MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT = 0x8DE1 unless const_defined? :MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT
    MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT      = 0x8DDF unless const_defined? :MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT
    MAX_GEOMETRY_VARYING_COMPONENTS_EXT      = 0x8DDD unless const_defined? :MAX_GEOMETRY_VARYING_COMPONENTS_EXT
    MAX_VARYING_COMPONENTS_EXT               = 0x8B4B unless const_defined? :MAX_VARYING_COMPONENTS_EXT
    MAX_VERTEX_VARYING_COMPONENTS_EXT        = 0x8DDE unless const_defined? :MAX_VERTEX_VARYING_COMPONENTS_EXT
    PROGRAM_POINT_SIZE_EXT                   = 0x8642 unless const_defined? :PROGRAM_POINT_SIZE_EXT
    TRIANGLE_STRIP_ADJACENCY_EXT             = 0xD unless const_defined? :TRIANGLE_STRIP_ADJACENCY_EXT
    TRIANGLES_ADJACENCY_EXT                  = 0xC unless const_defined? :TRIANGLES_ADJACENCY_EXT
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

