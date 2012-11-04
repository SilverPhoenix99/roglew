module GL_REGAL_extension_query
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetExtensionREGAL, [ :string ], :uchar],
              [:glIsSupportedREGAL, [ :string ], :uchar]
  end
end