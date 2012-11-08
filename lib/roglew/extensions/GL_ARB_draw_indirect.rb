module Roglew
  module GL
    DRAW_INDIRECT_BUFFER         = 0x8F3F unless const_defined? :DRAW_INDIRECT_BUFFER
    DRAW_INDIRECT_BUFFER_BINDING = 0x8F43 unless const_defined? :DRAW_INDIRECT_BUFFER_BINDING
  end
end

module GL_ARB_draw_indirect
  module RenderContext
    include Roglew::GLExtension

    functions [:glDrawArraysIndirect, [ :uint, :pointer ], :void],
              [:glDrawElementsIndirect, [ :uint, :uint, :pointer ], :void]
  end
end