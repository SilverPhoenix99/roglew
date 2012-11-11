module Roglew
  class FramebufferARB
    include Roglew::Contextual(FramebufferContextARB)

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_framebuffers
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing framebuffer #{id}"
        ctx.delete_framebuffers(id)
      end)
    end

    #target: one of GL::DRAW_FRAMEBUFFER, GL::READ_FRAMEBUFFER or GL::FRAMEBUFFER
    def bind(target, deferred = nil, &block)
      create_binding(deferred, target, &block)
    end
  end
end