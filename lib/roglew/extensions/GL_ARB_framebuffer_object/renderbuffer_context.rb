require 'roglew/extensions/GL_EXT_framebuffer_object/renderbuffer_context'

module Roglew
  class RenderbufferContextARB < RenderbufferContextEXT
    def storage_multisample(width, height, samples, internal_format)
      make_call(context, :renderbuffer_storage_multisample, GL::RENDERBUFFER, samples, internal_format, width, height) #TODO renderbuffer_storage_multisample
    end
  end
end