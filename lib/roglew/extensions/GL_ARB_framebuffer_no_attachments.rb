module Roglew
  module GL
    FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314 unless const_defined? :FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
    FRAMEBUFFER_DEFAULT_HEIGHT                 = 0x9311 unless const_defined? :FRAMEBUFFER_DEFAULT_HEIGHT
    FRAMEBUFFER_DEFAULT_LAYERS                 = 0x9312 unless const_defined? :FRAMEBUFFER_DEFAULT_LAYERS
    FRAMEBUFFER_DEFAULT_SAMPLES                = 0x9313 unless const_defined? :FRAMEBUFFER_DEFAULT_SAMPLES
    FRAMEBUFFER_DEFAULT_WIDTH                  = 0x9310 unless const_defined? :FRAMEBUFFER_DEFAULT_WIDTH
    MAX_FRAMEBUFFER_HEIGHT                     = 0x9316 unless const_defined? :MAX_FRAMEBUFFER_HEIGHT
    MAX_FRAMEBUFFER_LAYERS                     = 0x9317 unless const_defined? :MAX_FRAMEBUFFER_LAYERS
    MAX_FRAMEBUFFER_SAMPLES                    = 0x9318 unless const_defined? :MAX_FRAMEBUFFER_SAMPLES
    MAX_FRAMEBUFFER_WIDTH                      = 0x9315 unless const_defined? :MAX_FRAMEBUFFER_WIDTH
  end
end

module GL_ARB_framebuffer_no_attachments
  module RenderContext
    include Roglew::GLExtension

    functions [:glFramebufferParameteri, [ :uint, :uint, :int ], :void],
              [:glGetFramebufferParameteriv, [ :uint, :uint, :pointer ], :void],
              [:glGetNamedFramebufferParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glNamedFramebufferParameteriEXT, [ :uint, :uint, :int ], :void]
  end
end