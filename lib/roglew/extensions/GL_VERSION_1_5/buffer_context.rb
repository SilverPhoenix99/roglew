module Roglew
  class BufferContext
    include Roglew::BaseContext(:buffer)

    def initialize(buffer, deferred, target, &block)
      @target = target
      super(buffer, deferred, &block)
    end

    def data(usage, buffer = nil, type = nil)
      make_call(:buffer_data, @target, usage, buffer, type)
    end

    def sub_data(offset, type, buffer)
      make_call(:buffer_sub_data, @target, offset, type, buffer)
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