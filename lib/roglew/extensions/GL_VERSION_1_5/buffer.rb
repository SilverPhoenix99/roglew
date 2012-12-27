module Roglew
  class Buffer
    include Roglew::Contextual(BufferContext)

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_buffers

      ObjectSpace.define_finalizer(self, self.class.finalize(@context, @id))
    end

    def self.finalize(ctx, id)
      proc do
        puts "releasing buffer #{id}"
        ctx.delete_buffers(id)
      end
    end

    def bind(target, deferred = nil, &block)
      create_binding(deferred, target, &block)
    end
  end
end