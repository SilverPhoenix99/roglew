module GL_ARB_clear_buffer_object
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glClearBufferData, [ :uint, :uint, :uint, :uint, :pointer ], :void],
        [:glClearBufferSubData, [ :uint, :uint, :int64, :int64, :uint, :uint, :pointer ], :void],
        [:glClearNamedBufferDataEXT, [ :uint, :uint, :uint, :uint, :pointer ], :void],
        [:glClearNamedBufferSubDataEXT, [ :uint, :uint, :int64, :int64, :uint, :uint, :pointer ], :void]
    ]
  end
end