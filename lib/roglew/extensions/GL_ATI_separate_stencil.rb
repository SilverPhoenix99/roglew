module Roglew
  module GL
    STENCIL_BACK_FAIL_ATI            = 0x8801 unless const_defined? :STENCIL_BACK_FAIL_ATI
    STENCIL_BACK_FUNC_ATI            = 0x8800 unless const_defined? :STENCIL_BACK_FUNC_ATI
    STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 0x8802 unless const_defined? :STENCIL_BACK_PASS_DEPTH_FAIL_ATI
    STENCIL_BACK_PASS_DEPTH_PASS_ATI = 0x8803 unless const_defined? :STENCIL_BACK_PASS_DEPTH_PASS_ATI
  end
end

module GL_ATI_separate_stencil
  module RenderContext
    include Roglew::GLExtension

    functions [:glStencilFuncSeparateATI, [ :uint, :uint, :int, :uint ], :void],
              [:glStencilOpSeparateATI, [ :uint, :uint, :uint, :uint ], :void]
  end
end

