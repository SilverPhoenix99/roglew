module GL_AMD_vertex_shader_tessellator
  module RenderContext
    include GLExtension

    functions [:glTessellationFactorAMD, [ :float ], :void],
              [:glTessellationModeAMD, [ :uint ], :void]
  end
end