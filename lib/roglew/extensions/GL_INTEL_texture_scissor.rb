module GL_INTEL_texture_scissor
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glTexScissorFuncINTEL, [ :uint, :uint, :uint ], :void],
        [:glTexScissorINTEL, [ :uint, :float, :float ], :void]
    ]
  end
end