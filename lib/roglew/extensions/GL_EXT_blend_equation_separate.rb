module Roglew
  module GL
    BLEND_EQUATION_ALPHA_EXT = 0x883D unless const_defined? :BLEND_EQUATION_ALPHA_EXT
    BLEND_EQUATION_RGB_EXT   = 0x8009 unless const_defined? :BLEND_EQUATION_RGB_EXT
  end
end

module GL_EXT_blend_equation_separate
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendEquationSeparateEXT, [ :uint, :uint ], :void]
  end
end

