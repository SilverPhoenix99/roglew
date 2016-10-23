module Roglew
  class Texture2d
    include Roglew::Contextual(Texture2dContext)

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = handle.bind { |context| context.gen_textures }
      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(handle, id)
      proc do
        #puts "releasing texture #{id}"
        handle.delete_textures [id]
      end
    end

    def bind(level = 0, deferred = nil, &block)
      create_binding(deferred, GL::TEXTURE_2D, level, &block)
    end
  end
end