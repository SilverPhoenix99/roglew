module Roglew
  module GL
    MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB   = 0x8B4D unless const_defined? :MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB
    MAX_VARYING_FLOATS_ARB                 = 0x8B4B unless const_defined? :MAX_VARYING_FLOATS_ARB
    MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB     = 0x8B4C unless const_defined? :MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
    MAX_VERTEX_UNIFORM_COMPONENTS_ARB      = 0x8B4A unless const_defined? :MAX_VERTEX_UNIFORM_COMPONENTS_ARB
    OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = 0x8B8A unless const_defined? :OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB
    OBJECT_ACTIVE_ATTRIBUTES_ARB           = 0x8B89 unless const_defined? :OBJECT_ACTIVE_ATTRIBUTES_ARB
    VERTEX_SHADER_ARB                      = 0x8B31 unless const_defined? :VERTEX_SHADER_ARB
  end
end

module GL_ARB_vertex_shader
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindAttribLocationARB, [ :uint, :uint, :string ], :void],
              [:glGetActiveAttribARB, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void],
              [:glGetAttribLocationARB, [ :uint, :string ], :int]
  end
end

