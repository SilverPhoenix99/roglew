module Roglew
  module GL
    FRAMEBUFFER_ATTACHMENT_LAYERED_ARB       = 0x8DA7 unless const_defined? :FRAMEBUFFER_ATTACHMENT_LAYERED_ARB
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER     = 0x8CD4 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
    FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB   = 0x8DA9 unless const_defined? :FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB
    FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB = 0x8DA8 unless const_defined? :FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB
    GEOMETRY_INPUT_TYPE_ARB                  = 0x8DDB unless const_defined? :GEOMETRY_INPUT_TYPE_ARB
    GEOMETRY_OUTPUT_TYPE_ARB                 = 0x8DDC unless const_defined? :GEOMETRY_OUTPUT_TYPE_ARB
    GEOMETRY_SHADER_ARB                      = 0x8DD9 unless const_defined? :GEOMETRY_SHADER_ARB
    GEOMETRY_VERTICES_OUT_ARB                = 0x8DDA unless const_defined? :GEOMETRY_VERTICES_OUT_ARB
    LINE_STRIP_ADJACENCY_ARB                 = 0xB unless const_defined? :LINE_STRIP_ADJACENCY_ARB
    LINES_ADJACENCY_ARB                      = 0xA unless const_defined? :LINES_ADJACENCY_ARB
    MAX_GEOMETRY_OUTPUT_VERTICES_ARB         = 0x8DE0 unless const_defined? :MAX_GEOMETRY_OUTPUT_VERTICES_ARB
    MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB     = 0x8C29 unless const_defined? :MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB
    MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB = 0x8DE1 unless const_defined? :MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB
    MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB      = 0x8DDF unless const_defined? :MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB
    MAX_GEOMETRY_VARYING_COMPONENTS_ARB      = 0x8DDD unless const_defined? :MAX_GEOMETRY_VARYING_COMPONENTS_ARB
    MAX_VERTEX_VARYING_COMPONENTS_ARB        = 0x8DDE unless const_defined? :MAX_VERTEX_VARYING_COMPONENTS_ARB
    PROGRAM_POINT_SIZE_ARB                   = 0x8642 unless const_defined? :PROGRAM_POINT_SIZE_ARB
    TRIANGLE_STRIP_ADJACENCY_ARB             = 0xD unless const_defined? :TRIANGLE_STRIP_ADJACENCY_ARB
    TRIANGLES_ADJACENCY_ARB                  = 0xC unless const_defined? :TRIANGLES_ADJACENCY_ARB
  end
end

module GL_ARB_geometry_shader4
  module RenderContext
    include Roglew::GLExtension

    functions [:glFramebufferTextureARB, [ :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTextureFaceARB, [ :uint, :uint, :uint, :int, :uint ], :void],
              [:glFramebufferTextureLayerARB, [ :uint, :uint, :uint, :int, :int ], :void],
              [:glProgramParameteriARB, [ :uint, :uint, :int ], :void]
  end
end