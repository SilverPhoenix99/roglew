module GL_ARB_base_instance
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDrawArraysInstancedBaseInstance, [ :uint, :int, :int, :int, :uint ], :void],
        [:glDrawElementsInstancedBaseInstance, [ :uint, :int, :uint, :pointer, :int, :uint ], :void],
        [:glDrawElementsInstancedBaseVertexBaseInstance, [ :uint, :int, :uint, :pointer, :int, :int, :uint ], :void]
    ]
  end
end