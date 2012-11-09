module Roglew
  module GL
    FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT ||= 0x8D56
    MAX_SAMPLES_EXT                        ||= 0x8D57
    RENDERBUFFER_SAMPLES_EXT               ||= 0x8CAB
  end
end

module GL_EXT_framebuffer_multisample
  module RenderContext
    include Roglew::GLExtension

    functions [:glRenderbufferStorageMultisampleEXT, [ :uint, :int, :uint, :int, :int ], :void]
  end
end

