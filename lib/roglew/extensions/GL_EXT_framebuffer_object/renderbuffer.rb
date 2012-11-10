module Roglew
  class RenderbufferEXT
    include Roglew::Contextual(RenderbufferContextEXT)

    attr_reader :context, :id

    def initialize(context)
      @context = context.bind { @id = context.gen_renderbuffersEXT }
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing renderbuffer #{id}"
        ctx.delete_renderbuffersEXT(id)
      end)
    end

    def bind(deferred = nil, &block)
      create_binding(deferred, &block)
    end
  end
end