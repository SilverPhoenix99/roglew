module GL_core_3_1
  module RenderContext
    include GLExtension

    functions [:glDrawArraysInstanced, [ :uint, :int, :int, :int ], :void],
              [:glDrawElementsInstanced, [ :uint, :int, :uint, :pointer, :int ], :void],
              [:glPrimitiveRestartIndex, [ :uint ], :void],
              [:glTexBuffer, [ :uint, :uint, :uint ], :void]
  end
end