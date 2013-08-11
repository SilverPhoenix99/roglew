module Roglew
  module GL
    STENCIL_BACK_FAIL_ATI            ||= 0x8801
    STENCIL_BACK_FUNC_ATI            ||= 0x8800
    STENCIL_BACK_PASS_DEPTH_FAIL_ATI ||= 0x8802
    STENCIL_BACK_PASS_DEPTH_PASS_ATI ||= 0x8803
  end
end

module GL_ATI_separate_stencil
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glStencilFuncSeparateATI, [ :uint, :uint, :int, :uint ], :void],
        [:glStencilOpSeparateATI, [ :uint, :uint, :uint, :uint ], :void]
    ]
  end
end

