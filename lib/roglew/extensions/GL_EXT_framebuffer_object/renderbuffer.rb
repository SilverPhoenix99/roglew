module Roglew
  class RenderbufferEXT
    include Roglew::Contextual(RenderbufferContextEXT)

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_renderbuffersEXT
      ObjectSpace.define_finalizer(self, self.class.finalize(@context, @id))
    end

    def self.finalize(ctx, id)
      proc do
        puts "releasing renderbuffer #{id}"
        ctx.delete_renderbuffersEXT(id)
      end
    end

    def bind(deferred = nil, &block)
      create_binding(deferred, &block)
    end
  end
end