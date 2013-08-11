module Roglew
  module GL
    FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS ||= 0x9314
    FRAMEBUFFER_DEFAULT_HEIGHT                 ||= 0x9311
    FRAMEBUFFER_DEFAULT_LAYERS                 ||= 0x9312
    FRAMEBUFFER_DEFAULT_SAMPLES                ||= 0x9313
    FRAMEBUFFER_DEFAULT_WIDTH                  ||= 0x9310
    MAX_FRAMEBUFFER_HEIGHT                     ||= 0x9316
    MAX_FRAMEBUFFER_LAYERS                     ||= 0x9317
    MAX_FRAMEBUFFER_SAMPLES                    ||= 0x9318
    MAX_FRAMEBUFFER_WIDTH                      ||= 0x9315
  end
end

module GL_ARB_framebuffer_no_attachments
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glFramebufferParameteri, [ :uint, :uint, :int ], :void],
        [:glGetFramebufferParameteriv, [ :uint, :uint, :pointer ], :void],
        [:glGetNamedFramebufferParameterivEXT, [ :uint, :uint, :pointer ], :void],
        [:glNamedFramebufferParameteriEXT, [ :uint, :uint, :int ], :void]
    ]
  end
end