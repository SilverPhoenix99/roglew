module Roglew
  module BaseContext
    attr_reader :obj

    def initialize(obj)
      @obj = obj
    end

    private
    def context
      @obj.context
    end
  end

  module DeferredContext
    include BaseContext

    def initialize(obj)
      super
      @calls = []
    end

    def apply(target = nil)
      return unless @calls.empty?

      bind_method = self.class.ancestors.map{ |c| c.instance_variable_get(:@bind_method) }
      target = self.class.ancestors.map{ |c| c.instance_variable_get(:@target) } unless target

      context.send(bind_method, target, @obj.id)
      @calls.each { |obj, method, args| obj.send(method, *args) }.clear
      @obj.class.unbind

      nil
    end

    private
    def make_call(obj, method, *args)
      @calls << [obj, method, args]
      nil
    end
  end

  def self.DeferredContext(base_module, bind_method, target = nil)
    Module.new do
      include DeferredContext
      include base_module

      @bind_method = bind_method
      @target = target
    end
  end

  module ImmediateContext
    include BaseContext

    private
    def make_call(obj, method, *args)
      obj.send(method, *args)
    end
  end

  def self.ImmediateContext(base_module)
    Module.new do
      include ImmediateContext
      include base_module
    end
  end
end