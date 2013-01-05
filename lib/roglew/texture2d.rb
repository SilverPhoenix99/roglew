module Roglew
  class Texture2d
    include Roglew::Contextual(Texture2dContext)

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_textures
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing texture #{id}"
        ctx.glDeleteTextures(id)
      end)
    end

    def bind(level = 0, deferred = nil, &block)
      create_binding(deferred, GL::TEXTURE_2D, level, &block)
    end
  end
end