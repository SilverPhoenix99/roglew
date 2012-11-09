module Roglew
  module GL
    BLEND_DST_ALPHA_EXT ||= 0x80CA
    BLEND_DST_RGB_EXT   ||= 0x80C8
    BLEND_SRC_ALPHA_EXT ||= 0x80CB
    BLEND_SRC_RGB_EXT   ||= 0x80C9
  end
end

module GL_EXT_blend_func_separate
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendFuncSeparateEXT, [ :uint, :uint, :uint, :uint ], :void]
  end
end

