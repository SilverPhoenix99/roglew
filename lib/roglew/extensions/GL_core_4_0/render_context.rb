module GL_core_4_0
  module RenderContext
    include GLExtension

    functions [:glBlendEquationi, [ :uint, :uint ], :void],
              [:glBlendEquationSeparatei, [ :uint, :uint, :uint ], :void],
              [:glBlendFunci, [ :uint, :uint, :uint ], :void],
              [:glBlendFuncSeparatei, [ :uint, :uint, :uint, :uint, :uint ], :void],
              [:glMinSampleShading, [ :float ], :void]
  end
end