module Roglew
  class BufferContext
    include Roglew::BaseContext(:buffer)

    make_calls :handle, :glBindBuffer

    make_calls :context,
               :buffer_data,
               :buffer_sub_data

    def initialize(buffer, deferred, target, &block)
      @target = target
      super(buffer, deferred, &block)
    end

    def data(usage, buffer = nil, type = nil)
      buffer_data(@target, usage, buffer, type)
    end

    def sub_data(offset, type, buffer)
      buffer_sub_data(@target, offset, type, buffer)
    end

    private
    def bind
      glBindBuffer(@target, buffer.id)
    end

    def unbind
      glBindBuffer(@target, 0)
    end
  end
end