module GL_REGAL_extension_query
  module RenderContext
    include GLExtension

    functions [:glGetExtensionREGAL, [ :string ], :uchar],
              [:glIsSupportedREGAL, [ :string ], :uchar]
  end
end