module Roglew
  module GL
    MAX_BINDABLE_UNIFORM_SIZE_EXT      = 0x8DED unless const_defined? :MAX_BINDABLE_UNIFORM_SIZE_EXT
    MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT = 0x8DE3 unless const_defined? :MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT
    MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT = 0x8DE4 unless const_defined? :MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT
    MAX_VERTEX_BINDABLE_UNIFORMS_EXT   = 0x8DE2 unless const_defined? :MAX_VERTEX_BINDABLE_UNIFORMS_EXT
    UNIFORM_BUFFER_BINDING_EXT         = 0x8DEF unless const_defined? :UNIFORM_BUFFER_BINDING_EXT
    UNIFORM_BUFFER_EXT                 = 0x8DEE unless const_defined? :UNIFORM_BUFFER_EXT
  end
end

module GL_EXT_bindable_uniform
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetUniformBufferSizeEXT, [ :uint, :int ], :int],
              [:glGetUniformOffsetEXT, [ :uint, :int ], :int64],
              [:glUniformBufferEXT, [ :uint, :int, :uint ], :void]
  end
end

