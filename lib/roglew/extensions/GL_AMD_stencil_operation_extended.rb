module Roglew
  module GL
    REPLACE_VALUE_AMD         ||= 0x874B
    SET_AMD                   ||= 0x874A
    STENCIL_BACK_OP_VALUE_AMD ||= 0x874D
    STENCIL_OP_VALUE_AMD      ||= 0x874C
  end
end

module GL_AMD_stencil_operation_extended
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glStencilOpValueAMD, [ :uint, :uint ], :void]
    ]
  end
end