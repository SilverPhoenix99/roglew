module Roglew
  module ImmediateContext
    def finished
      unbind
    end

    private
    def make_call(method, *args)
      context.send(method, *args)
    end

    def run
      bind
      return unless block_given?
      yield
      finished
    end
  end
end