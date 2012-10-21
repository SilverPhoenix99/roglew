module GL_APPLE_element_array
  module RenderContext
    include GLExtension

    functions [:glDrawElementArrayAPPLE, [ :uint, :int, :int ], :void],
              [:glDrawRangeElementArrayAPPLE, [ :uint, :uint, :uint, :int, :int ], :void],
              [:glElementPointerAPPLE, [ :uint, :pointer ], :void],
              [:glMultiDrawElementArrayAPPLE, [ :uint, :pointer, :pointer, :int ], :void],
              [:glMultiDrawRangeElementArrayAPPLE, [ :uint, :uint, :uint, :pointer, :pointer, :int ], :void]
  end
end