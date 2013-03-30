module Roglew
  module ContextualModule
    module ClassMethods
      def deferred?
        !!@deferred
      end

      def deferred=(v)
        @deferred = v
      end
    end

    include ClassMethods

    def self.included(c)
      c.extend ClassMethods
    end

    def is_deferred?(deferred)
      [
        deferred,
        self.deferred?,
        self.class.respond_to?(:deferred?) && self.class.deferred?,
        @context.respond_to?(:deferred?) && @context.deferred?,
        @context.class.respond_to?(:deferred?) && @context.class.deferred?,
        false
      ].compact.first
    end

    private
    def create_binding(deferred, *args, &block)
      ctx_class = self.class.ancestors.find { |c| c.is_a?(Contextual) }.context_class
      ctx = ctx_class.new(self, deferred, *args, &block)
      block_given? ? self : ctx
    end
  end

  class Contextual < Module
    attr_reader :context_class

    def initialize(context_class)
      @context_class = context_class
    end

    def included(c)
      super
      c.instance_eval do
        include ContextualModule
        extend ContextualModule::ClassMethods
      end
    end
  end

  def self.Contextual(context_class)
    Contextual.new(context_class)
  end
end