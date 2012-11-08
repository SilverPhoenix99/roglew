module Roglew
  module GL
    DRAW_FRAMEBUFFER_BINDING_EXT = 0x8CA6 unless const_defined? :DRAW_FRAMEBUFFER_BINDING_EXT
    DRAW_FRAMEBUFFER_EXT         = 0x8CA9 unless const_defined? :DRAW_FRAMEBUFFER_EXT
    READ_FRAMEBUFFER_BINDING_EXT = 0x8CAA unless const_defined? :READ_FRAMEBUFFER_BINDING_EXT
    READ_FRAMEBUFFER_EXT         = 0x8CA8 unless const_defined? :READ_FRAMEBUFFER_EXT
  end
end

module GL_EXT_framebuffer_blit
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlitFramebufferEXT, [ :int, :int, :int, :int, :int, :int, :int, :int, :uint, :uint ], :void]
  end
end

