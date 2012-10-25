module Roglew
  module GL
    MAX_ELEMENTS_INDICES_EXT  = 0x80E9
    MAX_ELEMENTS_VERTICES_EXT = 0x80E8
  end
end

module GL_EXT_draw_range_elements
  module RenderContext
    include GLExtension

    functions [:glDrawRangeElementsEXT, [ :uint, :uint, :uint, :int, :uint, :pointer ], :void]
  end
end

