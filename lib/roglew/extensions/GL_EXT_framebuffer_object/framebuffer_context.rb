module Roglew
  class FramebufferContextEXT
    include Roglew::BaseContext(:framebuffer)

    immediate_module ImmediateFramebufferContextEXT

    def initialize(framebuffer, deferred, target, &block)
      @target = target
      super(framebuffer, deferred, &block)
    end

    def attach(target, attachment, level = 0)
      case target
        when RenderbufferEXT
          make_call(:glFramebufferRenderbufferEXT, GL::FRAMEBUFFER_EXT, attachment, GL::RENDERBUFFER_EXT, target.id)
        when Texture2d
          make_call(:glFramebufferTexture2DEXT, GL::FRAMEBUFFER_EXT, attachment, GL::TEXTURE_2D, target.id, level)
        else raise ArgumentError, "first parameter isn't a RenderbufferEXT nor a Texture2d"
      end
    end

    private
    def bind
      context.glBindFramebufferEXT(@target, framebuffer.id)
    end

    def unbind
      context.glBindFramebufferEXT(@target, 0)
    end
  end

  #methods attachment_parameter and status not available in DeferredContext because they require an active bind
  module ImmediateFramebufferContextEXT
    def status
      context.glCheckFramebufferStatusEXT(@target)
    end

    def attachment_parameter(attachment, pname)
      context.framebuffer_attachment_parameterEXT(GL::FRAMEBUFFER_EXT, attachment, pname)
    end
  end
end