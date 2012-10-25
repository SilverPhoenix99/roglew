module GL_EXT_draw_instanced
  module RenderContext
    include GLExtension

    functions [:glDrawArraysInstancedEXT, [ :uint, :int, :int, :int ], :void],
              [:glDrawElementsInstancedEXT, [ :uint, :int, :uint, :pointer, :int ], :void]
  end
end