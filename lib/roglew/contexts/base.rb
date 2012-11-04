module Roglew
  #classes/modules that include BaseContextModule must implement methods :bind and :unbind
  module BaseContextModule
    module ClassMethods
      def immediate_module(mod)
        raise ArgumentError, 'not a module' unless mod.is_a?(Module)
        @immediate_mod = mod
      end

      def deferred_module(mod)
        raise ArgumentError, 'not a module' unless mod.is_a?(Module)
        @deferred_mod = mod
      end
    end

    attr_reader :obj

    def initialize(obj, deferred, &block)
      @obj, @deferred = obj, @obj.is_deferred?(deferred)
      singleton_class.send(:include, @deferred ? DeferredContext : ImmediateContext)
      mod = self.class.instance_variable_get(@deferred ? :@deferred_mod : @immediate_mod)
      singleton_class.send(:include, mod) if mod
      run(&block) if block_given? && respond_to?(:run)
    end

    def self.included(c)
      c.extend ClassMethods
    end

    def deferred?
      @deferred
    end

    def immediate?
      !@deferred
    end

    def context
      @obj.context
    end
  end

  class BaseContext < Module
    def initialize(obj_type)
      @obj_type = obj_type
    end

    def included(c)
      super
      c.send(:include, BaseContextModule)
      c.send(:alias_method, @obj_type, :obj)
    end
  end

  def self.BaseContext(obj_type)
    BaseContext.new(obj_type)
  end
end