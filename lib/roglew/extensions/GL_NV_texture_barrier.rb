module GL_NV_texture_barrier
  module RenderContext
    include Roglew::GLExtension

    functions [:glTextureBarrierNV, [  ], :void]
  end
end