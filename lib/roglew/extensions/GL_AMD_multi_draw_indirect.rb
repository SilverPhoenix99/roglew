module GL_AMD_multi_draw_indirect
  module RenderContext
    include Roglew::GLExtension

    functions [:glMultiDrawArraysIndirectAMD, [ :uint, :pointer, :int, :int ], :void],
              [:glMultiDrawElementsIndirectAMD, [ :uint, :uint, :pointer, :int, :int ], :void]
  end
end