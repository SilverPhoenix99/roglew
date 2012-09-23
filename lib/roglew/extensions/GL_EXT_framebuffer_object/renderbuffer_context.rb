module Roglew
  class RenderbufferContextEXT
    include Roglew::BaseContext(:renderbuffer)

    immediate_module ImmediateRenderbufferContextEXT

    def initialize(renderbuffer, deferred, &block)
      super
    end

    def storage(width, height, internal_format)
      make_call(:glRenderbufferStorageEXT, GL::RENDERBUFFER_EXT, internal_format, width, height)
    end

    private
    def bind
      context.glBindRenderbufferEXT(GL::RENDERBUFFER_EXT, renderbuffer.id)
    end

    def unbind
      context.glBindRenderbufferEXT(GL::RENDERBUFFER_EXT, 0)
    end
  end

  module ImmediateRenderbufferContextEXT
    %w{width
    height
    internal_format
    red_size
    green_size
    blue_size
    alpha_size
    depth_size
    stencil_size}.each do |n|
      class_eval "
        def #{n}()
          context.instance_variable_set(
            :@#{n},
            context.renderbuffer_parameterEXT(GL::RENDERBUFFER_EXT, GL::RENDERBUFFER_#{n.upcase}_EXT))
        end"
    end
  end
end