module Roglew
  module ImmediateFramebufferContextEXT
    def included(c)
      c.make_calls :handle, :glCheckFramebufferStatusEXT
      c.make_calls :context, :framebuffer_attachment_parameterEXT
    end

    def status
      glCheckFramebufferStatusEXT(@target)
    end

    def attachment_parameter(attachment, pname)
      framebuffer_attachment_parameterEXT(GL::FRAMEBUFFER_EXT, attachment, pname)
    end
  end

  class FramebufferContextEXT
    include Roglew::BaseContext(:framebuffer)

    immediate_module ImmediateFramebufferContextEXT

    make_calls :handle,
               :glBindFramebufferEXT,
               :glFramebufferRenderbufferEXT,
               :glFramebufferTexture2DEXT

    def initialize(framebuffer, deferred, target, &block)
      @target = target
      super(framebuffer, deferred, &block)
    end

    def attach(obj, attachment, level = 0)
      case obj
        when RenderbufferEXT
          glFramebufferRenderbufferEXT(@target, attachment, GL::RENDERBUFFER_EXT, obj.id)
        when Texture2d
          #TODO glFramebufferTexture1DEXT glFramebufferTexture3DEXT
          glFramebufferTexture2DEXT(@target, attachment, GL::TEXTURE_2D, obj.id, level)
        else raise ArgumentError, "first parameter isn't a RenderbufferEXT nor a Texture2d"
      end
    end

    private
    def bind
      glBindFramebufferEXT(@target, framebuffer.id)
    end

    def unbind
      glBindFramebufferEXT(@target, 0)
    end
  end
end