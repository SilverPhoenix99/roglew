module Roglew
  class RenderbufferARB
    include Roglew::Contextual(RenderbufferContextARB)

    attr_reader :context, :id

    def initialize(context)
      @context = context.bind { @id = context.gen_renderbuffers }
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing renderbuffer #{id}"
        ctx.delete_renderbuffers(id)
      end)
    end

    def bind(deferred = nil, &block)
      create_binding(deferred, &block)
    end
  end
end