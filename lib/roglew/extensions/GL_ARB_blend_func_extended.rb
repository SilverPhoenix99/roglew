module Roglew
  module GL
    MAX_DUAL_SOURCE_DRAW_BUFFERS ||= 0x88FC
    ONE_MINUS_SRC1_ALPHA         ||= 0x88FB
    ONE_MINUS_SRC1_COLOR         ||= 0x88FA
    SRC1_COLOR                   ||= 0x88F9
  end
end

module GL_ARB_blend_func_extended
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindFragDataLocationIndexed, [ :uint, :uint, :uint, :string ], :void],
              [:glGetFragDataIndex, [ :uint, :string ], :int]
  end
end