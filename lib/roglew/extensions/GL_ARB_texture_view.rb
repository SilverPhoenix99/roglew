module Roglew
  module GL
    TEXTURE_IMMUTABLE_LEVELS ||= 0x82DF
    TEXTURE_VIEW_MIN_LAYER   ||= 0x82DD
    TEXTURE_VIEW_MIN_LEVEL   ||= 0x82DB
    TEXTURE_VIEW_NUM_LAYERS  ||= 0x82DE
    TEXTURE_VIEW_NUM_LEVELS  ||= 0x82DC
  end
end

module GL_ARB_texture_view
  module RenderContext
    include Roglew::GLExtension

    functions [:glTextureView, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void]
  end
end

