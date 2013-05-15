module Roglew
  module ImmediateFramebufferContextARB
    def status
      context.glCheckFramebufferStatus(@target)
    end

    def attachment_parameter(attachment, pname)
      context.framebuffer_attachment_parameter(GL::FRAMEBUFFER_EXT, attachment, pname)
    end
  end

  class FramebufferContextARB
    include Roglew::BaseContext(:framebuffer)

    immediate_module ImmediateFramebufferContextARB

    def initialize(framebuffer, deferred, target, &block)
      @target = target
      super(framebuffer, deferred, &block)
    end

    def attach(obj, attachment, level = 0)
      case obj
        when RenderbufferARB
          make_call(:glFramebufferRenderbuffer, @target, attachment, GL::RENDERBUFFER, obj.id)
        when Texture2d
          #TODO glFramebufferTexture1D glFramebufferTexture3D
          make_call(:glFramebufferTexture2D, @target, attachment, GL::TEXTURE_2D, obj.id, level)
        else raise ArgumentError, "first parameter isn't a RenderbufferARB nor a Texture2d"
      end
    end

    def blit(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
      make_call(:glBlitFramebuffer, srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
    end

    def texture_layer(target, attachment, texture, level, layer)
      raise ArgumentError, "third parameter isn't of type Texture3d" unless texture.is_a? Texture2d
      make_call(:glFramebufferTextureLayer, target, attachment, texture.id, level, layer)
    end

    private
    def bind
      context.glBindFramebuffer(@target, framebuffer.id)
    end

    def unbind
      context.glBindFramebuffer(@target, 0)
    end
  end
end