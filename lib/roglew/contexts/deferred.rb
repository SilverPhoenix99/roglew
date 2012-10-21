module Roglew
  module DeferredContext
    def finished
      return unless self.calls.empty?
      bind
      self.calls.each { |method, args| method.(*args) }.clear
      unbind
      nil
    end

    private
    def calls
      @calls ||= []
    end

    def make_call(method, *args)
      self.calls << [context.public_method(method), args]
      nil
    end

    def run(&block)
      return unless block_given?
      ergo &block
      finished
    end
  end
end