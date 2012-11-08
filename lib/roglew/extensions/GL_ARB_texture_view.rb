module Roglew
  module GL
    TEXTURE_IMMUTABLE_LEVELS = 0x82DF unless const_defined? :TEXTURE_IMMUTABLE_LEVELS
    TEXTURE_VIEW_MIN_LAYER   = 0x82DD unless const_defined? :TEXTURE_VIEW_MIN_LAYER
    TEXTURE_VIEW_MIN_LEVEL   = 0x82DB unless const_defined? :TEXTURE_VIEW_MIN_LEVEL
    TEXTURE_VIEW_NUM_LAYERS  = 0x82DE unless const_defined? :TEXTURE_VIEW_NUM_LAYERS
    TEXTURE_VIEW_NUM_LEVELS  = 0x82DC unless const_defined? :TEXTURE_VIEW_NUM_LEVELS
  end
end

module GL_ARB_texture_view
  module RenderContext
    include Roglew::GLExtension

    functions [:glTextureView, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void]
  end
end

