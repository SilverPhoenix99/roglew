module GL_core_3_3
  module RenderContext
    include GLExtension

    functions [:glVertexAttribDivisor, [ :uint, :uint ], :void]

  end
end