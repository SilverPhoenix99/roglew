module Roglew
  module GL
    ELEMENT_ARRAY_ATI         = 0x8768
    ELEMENT_ARRAY_POINTER_ATI = 0x876A
    ELEMENT_ARRAY_TYPE_ATI    = 0x8769
  end
end

module GL_ATI_element_array
  module RenderContext
    include Roglew::GLExtension

    functions [:glDrawElementArrayATI, [ :uint, :int ], :void],
              [:glDrawRangeElementArrayATI, [ :uint, :uint, :uint, :int ], :void],
              [:glElementPointerATI, [ :uint, :pointer ], :void]
  end
end

