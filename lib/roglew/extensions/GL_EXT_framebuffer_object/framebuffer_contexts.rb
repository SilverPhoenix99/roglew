module Roglew
  module BaseFramebufferContext
    def framebuffer; @obj end

    def renderbuffer(renderbuffer, attachment)
      raise ArgumentError, "first parameter isn't of type Renderbuffer" unless renderbuffer.is_a? Renderbuffer
      make_call(context, :framebuffer_renderbuffer, GL::FRAMEBUFFER, attachment, GL::RENDERBUFFER, renderbuffer.id)
    end

    def texture_2d(target, attachment, texture)
      raise ArgumentError, "third parameter isn't of type Texture2d" unless renderbuffer.is_a? Texture2d
      make_call(context, :framebuffer_texture_2d, target, attachment, GL::TEXTURE_2D, texture.id, level)
    end
  end

  class ImmediateFramebufferContext
    include ImmediateContext(BaseFramebufferContext)

    def status(target)
      framebuffer.instance_variable_set(@status, context.check_framebuffer_status(target))
      framebuffer.status
    end

    def attachment_parameter(attachment, pname)
      context.framebuffer_attachment_parameter(GL::FRAMEBUFFER, attachment, pname)
    end
  end

  class DeferredFramebufferContext
    include DeferredContext(BaseFramebufferContext, :bind_framebuffer)

    #methods attachment_parameter, status not available because they require a bind
  end
end