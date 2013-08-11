module GL_SGIX_pixel_texture
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glPixelTexGenSGIX, [ :uint ], :void]
    ]
  end
end

