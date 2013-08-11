module Roglew
  module GL
    FIRST_VERTEX_CONVENTION_EXT                  ||= 0x8E4D
    LAST_VERTEX_CONVENTION_EXT                   ||= 0x8E4E
    PROVOKING_VERTEX_EXT                         ||= 0x8E4F
    QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT ||= 0x8E4C
  end
end

module GL_EXT_provoking_vertex
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glProvokingVertexEXT, [ :uint ], :void]
    ]
  end
end

