module Roglew
  class Framebuffer
    attr_reader :context, :id, :status

    def initialize(context)
      @context, @status = context.bind { |_| @id = @context.gen_framebuffers }, nil

      self.class.finalize(self, @id)
    end

    def self.finalize(obj, id)
      ObjectSpace.define_finalizer(obj, proc do
        GL.delete_framebuffers(id)
      end)
    end

    #target: one of GL::DRAW_FRAMEBUFFER, GL::READ_FRAMEBUFFER or GL::FRAMEBUFFER
    def self.unbind(target)
      context.bind_framebuffer(target, 0)
    end

    #target: one of GL::DRAW_FRAMEBUFFER, GL::READ_FRAMEBUFFER or GL::FRAMEBUFFER
    def bind(target, deferred = nil, &block)
      deferred = [deferred, self.deferred?, self.class.deferred?, GL.deferred?].compact.first

      ctx = (deferred ? DeferredFramebufferContext : ImmediateFramebufferContext).new(self)
      GL.bind_framebuffer(target, @id) unless deferred
      return ctx unless block_given?
      ctx.ergo &block
      if deferred then ctx.apply else self.class.unbind(target) end

      self
    end
  end
end