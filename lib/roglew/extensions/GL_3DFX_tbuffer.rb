module GL_3DFX_tbuffer
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [ :glTbufferMask3DFX, [ :uint ], :void ]
    ]

  end
end