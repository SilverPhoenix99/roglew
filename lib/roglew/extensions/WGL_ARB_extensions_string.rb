module WGL_ARB_extensions_string
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglGetExtensionsStringARB, [ :pointer ], :string ]
    ]
  end
end