module Roglew
  module GL
    BLEND_DST_ALPHA_EXT = 0x80CA unless const_defined? :BLEND_DST_ALPHA_EXT
    BLEND_DST_RGB_EXT   = 0x80C8 unless const_defined? :BLEND_DST_RGB_EXT
    BLEND_SRC_ALPHA_EXT = 0x80CB unless const_defined? :BLEND_SRC_ALPHA_EXT
    BLEND_SRC_RGB_EXT   = 0x80C9 unless const_defined? :BLEND_SRC_RGB_EXT
  end
end

module GL_EXT_blend_func_separate
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendFuncSeparateEXT, [ :uint, :uint, :uint, :uint ], :void]
  end
end

