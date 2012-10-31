module GL_NV_texture_barrier
  module RenderContext
    include GLExtension

    functions [:glTextureBarrierNV, [  ], :void]
  end
end