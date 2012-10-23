module GL_ARB_multi_draw_indirect
  module RenderContext
    include GLExtension

    functions [:glMultiDrawArraysIndirect, [ :uint, :pointer, :int, :int ], :void],
              [:glMultiDrawElementsIndirect, [ :uint, :uint, :pointer, :int, :int ], :void]
  end
end