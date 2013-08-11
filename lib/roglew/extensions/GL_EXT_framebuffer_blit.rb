module Roglew
  module GL
    DRAW_FRAMEBUFFER_BINDING_EXT ||= 0x8CA6
    DRAW_FRAMEBUFFER_EXT         ||= 0x8CA9
    READ_FRAMEBUFFER_BINDING_EXT ||= 0x8CAA
    READ_FRAMEBUFFER_EXT         ||= 0x8CA8
  end
end

module GL_EXT_framebuffer_blit
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBlitFramebufferEXT, [ :int, :int, :int, :int, :int, :int, :int, :int, :uint, :uint ], :void]
    ]
  end
end

