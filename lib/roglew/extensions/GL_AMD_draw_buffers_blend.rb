module GL_AMD_draw_buffers_blend
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendEquationIndexedAMD, [ :uint, :uint ], :void],
              [:glBlendEquationSeparateIndexedAMD, [ :uint, :uint, :uint ], :void],
              [:glBlendFuncIndexedAMD, [ :uint, :uint, :uint ], :void],
              [:glBlendFuncSeparateIndexedAMD, [ :uint, :uint, :uint, :uint, :uint ], :void]
  end
end