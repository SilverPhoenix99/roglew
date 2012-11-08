module Roglew
  module GL
    MAX_DUAL_SOURCE_DRAW_BUFFERS = 0x88FC unless const_defined? :MAX_DUAL_SOURCE_DRAW_BUFFERS
    ONE_MINUS_SRC1_ALPHA         = 0x88FB unless const_defined? :ONE_MINUS_SRC1_ALPHA
    ONE_MINUS_SRC1_COLOR         = 0x88FA unless const_defined? :ONE_MINUS_SRC1_COLOR
    SRC1_COLOR                   = 0x88F9 unless const_defined? :SRC1_COLOR
  end
end

module GL_ARB_blend_func_extended
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindFragDataLocationIndexed, [ :uint, :uint, :uint, :string ], :void],
              [:glGetFragDataIndex, [ :uint, :string ], :int]
  end
end