module GL_ARB_multi_draw_indirect
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glMultiDrawArraysIndirect, [ :uint, :pointer, :int, :int ], :void],
        [:glMultiDrawElementsIndirect, [ :uint, :uint, :pointer, :int, :int ], :void]
    ]
  end
end