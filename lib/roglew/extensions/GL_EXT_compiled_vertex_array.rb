module Roglew
  module GL
    ARRAY_ELEMENT_LOCK_COUNT_EXT = 0x81A9
    ARRAY_ELEMENT_LOCK_FIRST_EXT = 0x81A8
  end
end

module GL_EXT_compiled_vertex_array
  module RenderContext
    include Roglew::GLExtension

    functions [:glLockArraysEXT, [ :int, :int ], :void],
              [:glUnlockArraysEXT, [  ], :void]
  end
end

