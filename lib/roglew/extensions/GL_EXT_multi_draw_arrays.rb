module GL_EXT_multi_draw_arrays
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glMultiDrawArraysEXT, [ :uint, :pointer, :pointer, :int ], :void],
        [:glMultiDrawElementsEXT, [ :uint, :pointer, :uint, :pointer, :int ], :void]
    ]
  end
end