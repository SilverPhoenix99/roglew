module Roglew
  class Query

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_queries
      ObjectSpace.define_finalizer(self, self.class.finalize(@context, @id))
    end

    def self.finalize(ctx, id)
      proc do
        puts "releasing query #{id}"
        ctx.delete_queries(id)
      end
    end
  end
end