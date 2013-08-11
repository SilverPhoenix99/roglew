module WGL_EXT_extensions_string
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglGetExtensionsStringEXT, [ ], :pointer ]
    ]
  end
end