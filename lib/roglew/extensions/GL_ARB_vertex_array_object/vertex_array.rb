module Roglew
  class VertexArray

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_vertex_arrays
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing vertex array #{id}"
        ctx.delete_vertex_arrays(id)
      end)
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