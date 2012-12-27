module Roglew
  class RenderbufferARB
    include Roglew::Contextual(RenderbufferContextARB)

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_renderbuffers
      ObjectSpace.define_finalizer(self, self.class.finalize(@context, @id))
    end

    def self.finalize(ctx, id)
      proc do
        puts "releasing renderbuffer #{id}"
        ctx.delete_renderbuffers(id)
      end
    end

    def bind(deferred = nil, &block)
      create_binding(deferred, &block)
    end
  end
end