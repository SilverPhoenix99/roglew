module Roglew
  module GL
    ELEMENT_ARRAY_APPLE         ||= 0x8A0C
    ELEMENT_ARRAY_POINTER_APPLE ||= 0x8A0E
    ELEMENT_ARRAY_TYPE_APPLE    ||= 0x8A0D
  end
end

module GL_APPLE_element_array
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDrawElementArrayAPPLE, [ :uint, :int, :int ], :void],
        [:glDrawRangeElementArrayAPPLE, [ :uint, :uint, :uint, :int, :int ], :void],
        [:glElementPointerAPPLE, [ :uint, :pointer ], :void],
        [:glMultiDrawElementArrayAPPLE, [ :uint, :pointer, :pointer, :int ], :void],
        [:glMultiDrawRangeElementArrayAPPLE, [ :uint, :uint, :uint, :pointer, :pointer, :int ], :void]
    ]
  end
end