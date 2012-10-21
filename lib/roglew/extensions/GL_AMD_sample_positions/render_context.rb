module GL_AMD_sample_positions
  module RenderContext
    include GLExtension

    functions [:glSetMultisamplefvAMD, [ :uint, :uint, :pointer ], :void]
  end
end