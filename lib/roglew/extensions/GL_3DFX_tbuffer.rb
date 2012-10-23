module GL_3DFX_tbuffer
  module RenderContext
    include GLExtension

    functions [:glTbufferMask3DFX, [ :uint ], :void]

  end
end