module Roglew
  class Renderbuffer
    attr_reader :context, :id

    def initialize(context)
      @context = context.bind { |_| @id = GL.gen_renderbuffers }
      self.class.finalize(self, @id)
    end

    def self.finalize(obj, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing renderbuffer #{id}"
        GL.delete_renderbuffers(id)
      end)
    end

    def self.unbind
      context.bind_renderbuffer(GL::RENDERBUFFER, 0)
    end

    def bind(deferred = nil, &block)
      deferred = [deferred, self.deferred?, self.class.deferred?, GL.deferred?].compact.first

      ctx = (deferred ? DeferredRenderbufferContext : ImmediateRenderbufferContext).new(self)
      GL.bind_renderbuffer(GL::RENDERBUFFER, @id) unless deferred
      return ctx unless block_given?
      ctx.ergo &block
      if deferred then ctx.apply else self.class.unbind end

      self
    end
  end
end