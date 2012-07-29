module Roglew
  class Texture2d
    attr_reader :context, :id

    @deferred = nil

    def initialize(context)
      @context, @deferred = context.bind { |_| @id = GL.gen_textures }, nil
      self.class.finalize(self, @id)
    end

    def self.finalize(obj, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing texture #{id}"
        GL.delete_textures(id)
      end)
    end

    def self.unbind
      GL.bind_texture(GL::TEXTURE_2D, 0)
    end

    def self.deferred?
      @deferred
    end

    def self.deferred=(v)
      @deferred = v
    end

    def deferred?
      @deferred
    end

    def deferred=(v)
      @deferred = v
    end

    def bind(deferred = nil, &block)
      deferred = [deferred, self.deferred?, self.class.deferred?, GL.deferred?].compact.first

      ctx = (deferred ? DeferredTextureContext : ImmediateTextureContext).new(self)
      GL.bind_texture(GL::TEXTURE_2D, @id) unless deferred
      return ctx unless block_given?
      ctx.ergo &block
      if deferred then ctx.apply else self.class.unbind end

      self
    end
  end
end