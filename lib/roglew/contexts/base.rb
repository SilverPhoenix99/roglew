module Roglew
  #classes/modules that include BaseContextModule must implement methods #bind and #unbind
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

      def make_calls(target, *names)
        names.map(&:to_sym).each do |name|
          define_method(name) { |*args| make_call(target, name, *args) }
          protected name
        end
      end
    end

    attr_reader :obj

    def initialize(obj, deferred, &block)
      @obj, deferred = obj, obj.is_deferred?(deferred)
      c = singleton_class
      c.send(:include, deferred ? DeferredContext : ImmediateContext)
      mod = c.instance_variable_get(deferred ? :@deferred_mod : :@immediate_mod)
      c.send(:include, mod) if mod

      #handle.loaded_extensions.each do |ext|
      #  #TODO ???
      #end

      run(&block) if respond_to?(:run, true)
    end

    def self.included(c)
      c.extend ClassMethods
    end

    def handle
      @obj.handle
    end

    private
    def context
      RenderContext.current
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