require 'roglew/extensions/GL_EXT_framebuffer_object/renderbuffer_contexts'

Roglew::BaseRenderbufferContext.instance_eval do
  def storage_multisample(width, height, samples, internal_format)
    make_call(context, :renderbuffer_storage_multisample, GL::RENDERBUFFER, samples, internal_format, width, height)
  end
end