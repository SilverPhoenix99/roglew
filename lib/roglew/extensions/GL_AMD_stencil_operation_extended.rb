module Roglew
  module GL
    REPLACE_VALUE_AMD         =  0x874B unless const_defined? :REPLACE_VALUE_AMD
    SET_AMD                   =  0x874A unless const_defined? :SET_AMD
    STENCIL_BACK_OP_VALUE_AMD =  0x874D unless const_defined? :STENCIL_BACK_OP_VALUE_AMD
    STENCIL_OP_VALUE_AMD      =  0x874C unless const_defined? :STENCIL_OP_VALUE_AMD
  end
end

module GL_AMD_stencil_operation_extended
  module RenderContext
    include Roglew::GLExtension

    functions [:glStencilOpValueAMD, [ :uint, :uint ], :void]
  end
end