module Roglew
  module GL
    CULL_VERTEX_EXT                 = 0x81AA
    CULL_VERTEX_EYE_POSITION_EXT    = 0x81AB
    CULL_VERTEX_OBJECT_POSITION_EXT = 0x81AC
  end
end

module GL_EXT_cull_vertex
  module RenderContext
    include Roglew::GLExtension

    functions [:glCullParameterdvEXT, [ :uint, :pointer ], :void],
              [:glCullParameterfvEXT, [ :uint, :pointer ], :void]
  end
end

