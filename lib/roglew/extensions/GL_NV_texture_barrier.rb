module GL_NV_texture_barrier
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glTextureBarrierNV, [], :void]
    ]
  end
end