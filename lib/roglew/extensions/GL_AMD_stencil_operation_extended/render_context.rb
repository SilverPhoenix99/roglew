module GL_AMD_stencil_operation_extended
  module RenderContext
    include GLExtension

    functions [:glStencilOpValueAMD, [ :uint, :uint ], :void]
  end
end