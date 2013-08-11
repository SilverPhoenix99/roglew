module Roglew
  module ImmediateContext
    def deferred?
      false
    end

    def finished
      unbind
    end

    def immediate?
      true
    end

    private
    def make_call(target, method, *args)
      send(target).public_send(method, *args)
    end

    def run
      bind
      return unless block_given?
      yield self
      finished
    end
  end
end