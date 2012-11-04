module GL_VERSION_3_3
  module RenderContext
    include Roglew::GLExtension

    functions [:glVertexAttribDivisor, [ :uint, :uint ], :void]

  end
end