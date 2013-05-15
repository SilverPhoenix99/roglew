module Roglew
  module GL
    VERTEX_ARRAY_BINDING ||= 0x85B5
  end
end

module GL_ARB_vertex_array_object
  module RenderContext
    include Roglew::GLExtension

    def create_vertex_array
      Roglew::VertexArray.new(self)
    end

    functions [:glBindVertexArray, [ :uint ], :void],
              [:glDeleteVertexArrays, [ :int, :pointer ], :void],
              [:glGenVertexArrays, [ :int, :pointer ], :void],
              [:glIsVertexArray, [ :uint ], :uchar]

    def_object :VertexArrays
  end
end

%w'
vertex_array
'.each { |f| require "#{File.expand_path(__FILE__)[0..-4]}/#{f}" }