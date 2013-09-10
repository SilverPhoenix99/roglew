module Roglew
  module ImmediateFramebufferContextARB
    def included(c)
      c.make_calls :handle, :glCheckFramebufferStatus
      c.make_calls :context, :framebuffer_attachment_parameter
    end

    def status
      glCheckFramebufferStatus(@target)
    end

    def attachment_parameter(attachment, pname)
      framebuffer_attachment_parameter(@target, attachment, pname)
    end
  end

  class FramebufferContextARB
    include Roglew::BaseContext(:framebuffer)

    immediate_module ImmediateFramebufferContextARB

    make_calls :handle,
               :glBindFramebuffer,
               :glBlitFramebuffer,
               :glFramebufferRenderbuffer,
               :glFramebufferTexture2D,
               :glFramebufferTextureLayer

    def initialize(framebuffer, deferred, target, &block)
      @target = target
      super(framebuffer, deferred, &block)
    end

    def attach(obj, attachment, level = 0)
      case obj
        when RenderbufferARB
          glFramebufferRenderbuffer(@target, attachment, GL::RENDERBUFFER, obj.id)
        when Texture2d
          #TODO glFramebufferTexture1D glFramebufferTexture3D
          glFramebufferTexture2D(@target, attachment, GL::TEXTURE_2D, obj.id, level)
        else raise ArgumentError, "first parameter isn't a RenderbufferARB nor a Texture2d"
      end
    end

    def blit(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
      glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
    end

    def texture_layer(texture, attachment, layer, level = 0)
      raise ArgumentError, "first parameter isn't of type Texture3d" unless texture.is_a? Texture3d
      glFramebufferTextureLayer(@target, attachment, texture.id, level, layer)
    end

    private
    def bind
      glBindFramebuffer(@target, framebuffer.id)
    end

    def unbind
      glBindFramebuffer(@target, 0)
    end
  end
end