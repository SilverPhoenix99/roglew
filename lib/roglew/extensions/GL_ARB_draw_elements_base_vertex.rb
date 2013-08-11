module GL_ARB_draw_elements_base_vertex
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDrawElementsBaseVertex, [ :uint, :int, :uint, :pointer, :int ], :void],
        [:glDrawElementsInstancedBaseVertex, [ :uint, :int, :uint, :pointer, :int, :int ], :void],
        [:glDrawRangeElementsBaseVertex, [ :uint, :uint, :uint, :int, :uint, :pointer, :int ], :void],
        [:glMultiDrawElementsBaseVertex, [ :uint, :pointer, :uint, :pointer, :int, :pointer ], :void]
    ]
  end
end