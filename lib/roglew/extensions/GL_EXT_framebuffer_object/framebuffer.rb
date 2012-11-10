module Roglew
  class FramebufferEXT
    include Roglew::Contextual(FramebufferContextEXT)

    attr_reader :context, :id

    def initialize(context)
      @context = context.bind { @id = context.gen_framebuffersEXT }
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing framebuffer #{id}"
        ctx.delete_framebuffersEXT(id)
      end)
    end

    #target: one of GL::DRAW_FRAMEBUFFER_EXT, GL::READ_FRAMEBUFFER_EXT or GL::FRAMEBUFFER_EXT
    def bind(target, deferred = nil, &block)
      create_binding(deferred, target, &block)
    end
  end
end