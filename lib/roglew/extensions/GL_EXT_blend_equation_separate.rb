module Roglew
  module GL
    BLEND_EQUATION_ALPHA_EXT ||= 0x883D
    BLEND_EQUATION_RGB_EXT   ||= 0x8009
  end
end

module GL_EXT_blend_equation_separate
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendEquationSeparateEXT, [ :uint, :uint ], :void]
  end
end

