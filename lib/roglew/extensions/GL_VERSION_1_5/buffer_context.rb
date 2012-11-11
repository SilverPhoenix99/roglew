module Roglew
  class BufferContext
    include Roglew::BaseContext(:buffer)

    def initialize(buffer, deferred, target, &block)
      @target = target
      super(buffer, deferred, &block)
    end

    def data(usage, type = nil, buffer = nil)
      make_call(:buffer_data, @target, usage, type, buffer)
    end

    private
    def bind
      context.glBindBuffer(@target, buffer.id)
    end

    def unbind
      context.glBindBuffer(@target, 0)
    end
  end
end