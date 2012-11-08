module Roglew
  module GL
    BLEND_EQUATION_EXT = 0x8009 unless const_defined? :BLEND_EQUATION_EXT
    FUNC_ADD_EXT       = 0x8006 unless const_defined? :FUNC_ADD_EXT
    MAX_EXT            = 0x8008 unless const_defined? :MAX_EXT
    MIN_EXT            = 0x8007 unless const_defined? :MIN_EXT
  end
end

module GL_EXT_blend_minmax
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendEquationEXT, [ :uint ], :void]
  end
end

