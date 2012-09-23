module Roglew
  module ImmediateContext
    def finished
      unbind
    end

    private
    def make_call(method, *args)
      context.send(method, *args)
    end

    def run(&block)
      bind
      return unless block_given?
      ergo &block
      finished
    end
  end
end