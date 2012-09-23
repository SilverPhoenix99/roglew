module Roglew
  class Texture2d
    include Roglew::Contextual(TextureContext)

    attr_reader :context, :id

    def initialize(context)
      @context = context.bind { |c| @id = c.gen_textures }
      self.class.finalize(self, @context, @id)
    end

    def self.finalize(obj, ctx, id)
      ObjectSpace.define_finalizer(obj, proc do
        puts "releasing texture #{id}"
        ctx.glDeleteTextures(id)
      end)
    end

    def bind(deferred = nil, &block)
      create_binding(deferred, GL::TEXTURE_2D, &block)
    end
  end
end