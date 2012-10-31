module GL_REGAL_error_string
  module RenderContext
    include GLExtension

    functions [:glErrorStringREGAL, [ :uint ], :char]
  end
end