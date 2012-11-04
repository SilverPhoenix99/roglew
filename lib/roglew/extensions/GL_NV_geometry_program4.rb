module Roglew
  module GL
    GEOMETRY_PROGRAM_NV                    = 0x8C26
    MAX_PROGRAM_OUTPUT_VERTICES_NV         = 0x8C27
    MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV = 0x8C28
  end
end

module GL_NV_geometry_program4
  module RenderContext
    include Roglew::GLExtension

    functions [:glProgramVertexLimitNV, [ :uint, :int ], :void]
  end
end

