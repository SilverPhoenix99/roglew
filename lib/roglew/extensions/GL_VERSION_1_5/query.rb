module Roglew
  class Query

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_queries
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing query #{id}"
        ctx.delete_queries(id)
      end)
    end
  end
end