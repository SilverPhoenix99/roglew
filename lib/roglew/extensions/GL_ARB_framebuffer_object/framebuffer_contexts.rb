require 'roglew/extensions/GL_EXT_framebuffer_object/framebuffer_contexts'

Roglew::BaseFramebufferContext.instance_eval do
  def blit(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
    make_call(context, :blit_framebuffer, srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
  end

  def texture_layer(target, attachment, texture, level, layer)
    raise ArgumentError, "third parameter isn't of type Texture2d" unless renderbuffer.is_a? Texture2d
    make_call(context, :framebuffer_texture_layer, target, attachment, texture.id, level, layer)
  end
end