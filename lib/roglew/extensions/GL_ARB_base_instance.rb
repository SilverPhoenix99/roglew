module GL_ARB_base_instance
  module RenderContext
    include GLExtension

    functions [:glDrawArraysInstancedBaseInstance, [ :uint, :int, :int, :int, :uint ], :void],
              [:glDrawElementsInstancedBaseInstance, [ :uint, :int, :uint, :pointer, :int, :uint ], :void],
              [:glDrawElementsInstancedBaseVertexBaseInstance, [ :uint, :int, :uint, :pointer, :int, :int, :uint ], :void]
  end
end