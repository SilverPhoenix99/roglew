module Roglew
  module ImmediateRenderbufferContextEXT
    def included(c)
      c.make_calls :context, :renderbuffer_parameterEXT
    end

    %w{width
    height
    internal_format
    red_size
    green_size
    blue_size
    alpha_size
    depth_size
    stencil_size}.each do |n|
      class_eval "def #{n}() renderbuffer_parameterEXT(GL::RENDERBUFFER_EXT, GL::RENDERBUFFER_#{n.upcase}_EXT) end"
    end
  end

  class RenderbufferContextEXT
    include Roglew::BaseContext(:renderbuffer)

    immediate_module ImmediateRenderbufferContextEXT

    make_calls :handle,
               :glBindRenderbufferEXT,
               :glRenderbufferStorageEXT

    def initialize(renderbuffer, deferred, &block)
      super
    end

    def storage(width, height, internal_format)
      glRenderbufferStorageEXT(GL::RENDERBUFFER_EXT, internal_format, width, height)
    end

    private
    def bind
      glBindRenderbufferEXT(GL::RENDERBUFFER_EXT, renderbuffer.id)
    end

    def unbind
      glBindRenderbufferEXT(GL::RENDERBUFFER_EXT, 0)
    end
  end
end