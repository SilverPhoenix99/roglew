module Roglew
  class FramebufferEXT
    include Roglew::Contextual(FramebufferContextEXT)

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = handle.bind { |context| context.gen_framebuffersEXT }
      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(handle, id)
      proc do
        puts "releasing framebuffer #{id}"
        handle.bind { |context| context.delete_framebuffersEXT(id) }
      end
    end

    #target: one of GL::DRAW_FRAMEBUFFER_EXT, GL::READ_FRAMEBUFFER_EXT or GL::FRAMEBUFFER_EXT
    def bind(target, deferred = nil, &block)
      create_binding(deferred, target, &block)
    end
  end
end