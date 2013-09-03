module Roglew
  class RenderbufferEXT
    include Roglew::Contextual(RenderbufferContextEXT)

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = handle.bind { |context| context.gen_renderbuffersEXT }
      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(handle, id)
      proc do
        #puts "releasing renderbuffer #{id}"
        handle.bind { |context| context.delete_renderbuffersEXT(id) }
      end
    end

    def bind(deferred = nil, &block)
      create_binding(deferred, &block)
    end
  end
end