module Roglew
  module GL
    MAX_BINDABLE_UNIFORM_SIZE_EXT      ||= 0x8DED
    MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT ||= 0x8DE3
    MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT ||= 0x8DE4
    MAX_VERTEX_BINDABLE_UNIFORMS_EXT   ||= 0x8DE2
    UNIFORM_BUFFER_BINDING_EXT         ||= 0x8DEF
    UNIFORM_BUFFER_EXT                 ||= 0x8DEE
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

