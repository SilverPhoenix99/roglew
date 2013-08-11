module Roglew
  module ImmediateRenderbufferContextARB
    def included(c)
      c.make_calls :context, :renderbuffer_parameter
    end

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
      class_eval "def #{n}() renderbuffer_parameter(GL::RENDERBUFFER, GL::RENDERBUFFER_#{n.upcase}) end"
    end
  end

  class RenderbufferContextARB
    include Roglew::BaseContext(:renderbuffer)

    immediate_module ImmediateRenderbufferContextARB

    make_calls :handle,
               :glBindRenderbuffer,
               :glRenderbufferStorage,
               :glRenderbufferStorageMultisample

    def initialize(renderbuffer, deferred, &block)
      super
    end

    def storage(width, height, internal_format)
      glRenderbufferStorage(GL::RENDERBUFFER, internal_format, width, height)
    end

    def storage_multisample(width, height, samples, internal_format)
      glRenderbufferStorageMultisample(GL::RENDERBUFFER, samples, internal_format, width, height)
    end

    private
    def bind
      glBindRenderbuffer(GL::RENDERBUFFER, renderbuffer.id)
    end

    def unbind
      glBindRenderbuffer(GL::RENDERBUFFER, 0)
    end
  end
end