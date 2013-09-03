module Roglew
  class RenderbufferARB
    include Roglew::Contextual(RenderbufferContextARB)

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = handle.bind { |context| context.gen_renderbuffers }
      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(handle, id)
      proc do
        #puts "releasing renderbuffer #{id}"
        handle.bind { |context| context.delete_renderbuffers(id) }
      end
    end

    def bind(deferred = nil, &block)
      create_binding(deferred, &block)
    end
  end
end