module GL_EXT_draw_instanced
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDrawArraysInstancedEXT, [ :uint, :int, :int, :int ], :void],
        [:glDrawElementsInstancedEXT, [ :uint, :int, :uint, :pointer, :int ], :void]
    ]
  end
end