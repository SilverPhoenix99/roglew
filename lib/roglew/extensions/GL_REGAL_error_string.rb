module GL_REGAL_error_string
  module RenderContext
    include Roglew::GLExtension

    functions [:glErrorStringREGAL, [ :uint ], :char]
  end
end