module GL_REGAL_extension_query
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glGetExtensionREGAL, [ :string ], :uchar],
        [:glIsSupportedREGAL, [ :string ], :uchar]
    ]
  end
end