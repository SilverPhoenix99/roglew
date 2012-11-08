module Roglew
  module GL
    FIRST_VERTEX_CONVENTION                  = 0x8E4D unless const_defined? :FIRST_VERTEX_CONVENTION
    LAST_VERTEX_CONVENTION                   = 0x8E4E unless const_defined? :LAST_VERTEX_CONVENTION
    PROVOKING_VERTEX                         = 0x8E4F unless const_defined? :PROVOKING_VERTEX
    QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C unless const_defined? :QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
  end
end

module GL_ARB_provoking_vertex
  module RenderContext
    include Roglew::GLExtension

    functions [:glProvokingVertex, [ :uint ], :void]
  end
end