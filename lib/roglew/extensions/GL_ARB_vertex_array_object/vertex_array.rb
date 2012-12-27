module Roglew
  class VertexArray

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_vertex_arrays
      ObjectSpace.define_finalizer(self, self.class.finalize(@context, @id))
    end

    def self.finalize(ctx, id)
      proc do
        puts "releasing vertex array #{id}"
        ctx.delete_vertex_arrays(id)
      end
    end

    def bind
      @context.glBindVertexArray(@id)
      if block_given?
        yield
        @context.glBindVertexArray(0)
      end
      self
    end
  end
end