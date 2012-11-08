module Roglew
  module GL
    FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 0x8D56 unless const_defined? :FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
    MAX_SAMPLES_EXT                        = 0x8D57 unless const_defined? :MAX_SAMPLES_EXT
    RENDERBUFFER_SAMPLES_EXT               = 0x8CAB unless const_defined? :RENDERBUFFER_SAMPLES_EXT
  end
end

module GL_EXT_framebuffer_multisample
  module RenderContext
    include Roglew::GLExtension

    functions [:glRenderbufferStorageMultisampleEXT, [ :uint, :int, :uint, :int, :int ], :void]
  end
end

