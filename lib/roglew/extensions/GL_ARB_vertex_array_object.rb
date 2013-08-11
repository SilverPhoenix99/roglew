module Roglew
  module GL
    VERTEX_ARRAY_BINDING ||= 0x85B5
  end
end

module GL_ARB_vertex_array_object
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBindVertexArray, [ :uint ], :void],
        [:glDeleteVertexArrays, [ :int, :pointer ], :void],
        [:glGenVertexArrays, [ :int, :pointer ], :void],
        [:glIsVertexArray, [ :uint ], :uchar]
    ]
  end

  module RenderContext
    include Roglew::RenderContextExtension

    def create_vertex_array
      Roglew::VertexArray.new(@rh)
    end

    def_object :VertexArrays
  end
end

%w'
  vertex_array
'.each { |f| require "#{File.expand_path(__FILE__)[0..-4]}/#{f}" }