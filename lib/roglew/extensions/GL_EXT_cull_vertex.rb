module Roglew
  module GL
    CULL_VERTEX_EXT                 = 0x81AA unless const_defined? :CULL_VERTEX_EXT
    CULL_VERTEX_EYE_POSITION_EXT    = 0x81AB unless const_defined? :CULL_VERTEX_EYE_POSITION_EXT
    CULL_VERTEX_OBJECT_POSITION_EXT = 0x81AC unless const_defined? :CULL_VERTEX_OBJECT_POSITION_EXT
  end
end

module GL_EXT_cull_vertex
  module RenderContext
    include Roglew::GLExtension

    functions [:glCullParameterdvEXT, [ :uint, :pointer ], :void],
              [:glCullParameterfvEXT, [ :uint, :pointer ], :void]
  end
end

