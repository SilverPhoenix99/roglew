module Roglew
  module GL
    BLEND_EQUATION_EXT ||= 0x8009
    FUNC_ADD_EXT       ||= 0x8006
    MAX_EXT            ||= 0x8008
    MIN_EXT            ||= 0x8007
  end
end

module GL_EXT_blend_minmax
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBlendEquationEXT, [ :uint ], :void]
    ]
  end
end

