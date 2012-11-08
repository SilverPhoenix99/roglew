module Roglew
  module GL
    ELEMENT_ARRAY_APPLE         = 0x8A0C unless const_defined? :ELEMENT_ARRAY_APPLE
    ELEMENT_ARRAY_POINTER_APPLE = 0x8A0E unless const_defined? :ELEMENT_ARRAY_POINTER_APPLE
    ELEMENT_ARRAY_TYPE_APPLE    = 0x8A0D unless const_defined? :ELEMENT_ARRAY_TYPE_APPLE
  end
end

module GL_APPLE_element_array
  module RenderContext
    include Roglew::GLExtension

    functions [:glDrawElementArrayAPPLE, [ :uint, :int, :int ], :void],
              [:glDrawRangeElementArrayAPPLE, [ :uint, :uint, :uint, :int, :int ], :void],
              [:glElementPointerAPPLE, [ :uint, :pointer ], :void],
              [:glMultiDrawElementArrayAPPLE, [ :uint, :pointer, :pointer, :int ], :void],
              [:glMultiDrawRangeElementArrayAPPLE, [ :uint, :uint, :uint, :pointer, :pointer, :int ], :void]
  end
end