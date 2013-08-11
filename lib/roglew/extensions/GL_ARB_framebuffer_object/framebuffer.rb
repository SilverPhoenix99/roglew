module Roglew
  class FramebufferARB
    include Roglew::Contextual(FramebufferContextARB)

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = context.gen_framebuffers
      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(ctx, id)
      proc do
        puts "releasing framebuffer #{id}"
        ctx.delete_framebuffers(id)
      end
    end

    #target: one of GL::DRAW_FRAMEBUFFER, GL::READ_FRAMEBUFFER or GL::FRAMEBUFFER
    def bind(target, deferred = nil, &block)
      create_binding(deferred, target, &block)
    end
  end
end