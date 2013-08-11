module GL_AMD_multi_draw_indirect
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glMultiDrawArraysIndirectAMD, [ :uint, :pointer, :int, :int ], :void],
        [:glMultiDrawElementsIndirectAMD, [ :uint, :uint, :pointer, :int, :int ], :void]
    ]
  end
end