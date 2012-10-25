%w'renderbuffer_context
renderbuffer
framebuffer_context
framebuffer
render_context
'.each { |f| require "roglew/extensions/GL_EXT_framebuffer_object/#{f}" }

module Roglew
  module GL
    MULTISAMPLE_3DFX     = 0x86B2
    MULTISAMPLE_BIT_3DFX = 0x20000000
    SAMPLE_BUFFERS_3DFX  = 0x86B3
    SAMPLES_3DFX         = 0x86B4
  end
end

module GL_EXT_framebuffer_object
  module RenderContext
    include GLExtension

    functions [:glBindFramebufferEXT, [ :uint, :uint ], :void],
              [:glBindRenderbufferEXT, [ :uint, :uint ], :void],
              [:glCheckFramebufferStatusEXT, [ :uint ], :uint],
              [:glDeleteFramebuffersEXT, [ :int, :pointer ], :void],
              [:glDeleteRenderbuffersEXT, [ :int, :pointer ], :void],
              [:glFramebufferRenderbufferEXT, [ :uint, :uint, :uint, :uint ], :void],
              [:glFramebufferTexture1DEXT, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTexture2DEXT, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTexture3DEXT, [ :uint, :uint, :uint, :uint, :int, :int ], :void],
              [:glGenerateMipmapEXT, [ :uint ], :void],
              [:glGenFramebuffersEXT, [ :int, :pointer ], :void],
              [:glGenRenderbuffersEXT, [ :int, :pointer ], :void],
              [:glGetFramebufferAttachmentParameterivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetRenderbufferParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glIsFramebufferEXT, [ :uint ], :uchar],
              [:glIsRenderbufferEXT, [ :uint ], :uchar],
              [:glRenderbufferStorageEXT, [ :uint, :uint, :int, :int ], :void]

  end
end