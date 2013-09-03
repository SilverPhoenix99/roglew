module Roglew
  class VertexArray

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = handle.bind { |rc| rc.gen_vertex_arrays }
      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(handle, id)
      proc do
        #puts "releasing vertex array #{id}"
        handle.bind { |rc| rc.delete_vertex_arrays(id) }
      end
    end

    def bind
      @handle.glBindVertexArray(@id)
      if block_given?
        yield
        @handle.glBindVertexArray(0)
      end
      self
    end
  end
end