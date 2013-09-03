module Roglew
  class Buffer
    include Roglew::Contextual(BufferContext)

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = handle.bind { |context| context.gen_buffers }

      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(handle, id)
      proc do
        #puts "releasing buffer #{id}"
        handle.bind { |context| context.delete_buffers(id) }
      end
    end

    def bind(target, deferred = nil, &block)
      create_binding(deferred, target, &block)
    end
  end
end