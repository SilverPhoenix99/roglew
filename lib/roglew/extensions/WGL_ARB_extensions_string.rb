module WGL_ARB_extensions_string
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetExtensionsStringARB, [ :pointer ], :string ]
  end
end