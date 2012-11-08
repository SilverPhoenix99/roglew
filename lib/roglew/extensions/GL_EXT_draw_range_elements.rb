module Roglew
  module GL
    MAX_ELEMENTS_INDICES_EXT  = 0x80E9 unless const_defined? :MAX_ELEMENTS_INDICES_EXT
    MAX_ELEMENTS_VERTICES_EXT = 0x80E8 unless const_defined? :MAX_ELEMENTS_VERTICES_EXT
  end
end

module GL_EXT_draw_range_elements
  module RenderContext
    include Roglew::GLExtension

    functions [:glDrawRangeElementsEXT, [ :uint, :uint, :uint, :int, :uint, :pointer ], :void]
  end
end

