module GL_INTEL_texture_scissor
  module RenderContext
    include Roglew::GLExtension

    functions [:glTexScissorFuncINTEL, [ :uint, :uint, :uint ], :void],
              [:glTexScissorINTEL, [ :uint, :float, :float ], :void]
  end
end