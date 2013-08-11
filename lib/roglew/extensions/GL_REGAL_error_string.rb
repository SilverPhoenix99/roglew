module GL_REGAL_error_string
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glErrorStringREGAL, [ :uint ], :char]
    ]
  end
end