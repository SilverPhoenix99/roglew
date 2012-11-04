module WGL_EXT_extensions_string
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetExtensionsStringEXT, [ ], :pointer ]
  end
end