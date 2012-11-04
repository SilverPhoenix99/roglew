module Roglew
  module GL

  end
end

module GL_SGIX_pixel_texture
  module RenderContext
    include Roglew::GLExtension

    functions [:glPixelTexGenSGIX, [ :uint ], :void]
  end
end

