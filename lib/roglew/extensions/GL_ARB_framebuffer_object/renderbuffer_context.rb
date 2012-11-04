module Roglew
  module ImmediateRenderbufferContextARB
    %w{width
    height
    internal_format
    red_size
    green_size
    blue_size
    alpha_size
    depth_size
    stencil_size
    samples}.each do |n|
      class_eval "
        def #{n}()
          context.instance_variable_set(
            :@#{n},
            context.renderbuffer_parameter(GL::RENDERBUFFER, GL::RENDERBUFFER_#{n.upcase}))
        end"
    end
  end

  class RenderbufferContextARB
    include Roglew::BaseContext(:renderbuffer)

    immediate_module ImmediateRenderbufferContextARB

    def initialize(renderbuffer, deferred, &block)
      super
    end

    def storage(width, height, internal_format)
      make_call(:glRenderbufferStorage, GL::RENDERBUFFER, internal_format, width, height)
    end

    def storage_multisample(width, height, samples, internal_format)
      make_call(:glRenderbufferStorageMultisample, GL::RENDERBUFFER, samples, internal_format, width, height)
    end

    private
    def bind
      context.glBindRenderbuffer(GL::RENDERBUFFER, renderbuffer.id)
    end

    def unbind
      context.glBindRenderbuffer(GL::RENDERBUFFER, 0)
    end
  end
end