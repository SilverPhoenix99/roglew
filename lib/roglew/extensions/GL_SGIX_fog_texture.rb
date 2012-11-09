module Roglew
  module GL
    TEXTURE_FOG_SGIX       ||= 0
    FOG_PATCHY_FACTOR_SGIX ||= 0
    FRAGMENT_FOG_SGIX      ||= 0
  end
end

module GL_SGIX_fog_texture
  module RenderContext
    include Roglew::GLExtension

    functions [:glTextureFogSGIX, [ :uint ], :void]
  end
end

