module Roglew
  class Texture2d
    include Roglew::Contextual(Texture2dContext)

    attr_reader :context, :id

    def initialize(context)
      @context = context
      @id = context.gen_textures
      ObjectSpace.define_finalizer(self, self.class.finalize(@context, @id))
    end

    def self.finalize(ctx, id)
      proc do
        puts "releasing texture #{id}"
        ctx.glDeleteTextures(id)
      end
    end

    def bind(level = 0, deferred = nil, &block)
      create_binding(deferred, GL::TEXTURE_2D, level, &block)
    end
  end
end