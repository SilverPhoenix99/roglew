module Roglew
  module DeferredContext
    def deferred?
      true
    end

    def finished
      return unless self.calls.empty?
      bind
      self.calls.each { |target, method, args| send(target).public_send(method, *args) }.clear
      unbind
      nil
    end

    def immediate?
      false
    end

    private
    def calls
      @calls ||= []
    end

    def make_call(target, method, *args)
      self.calls << [target, method, args]
    end

    def run
      return unless block_given?
      yield self
      finished
    end
  end
end