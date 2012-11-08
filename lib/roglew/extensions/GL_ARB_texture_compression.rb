module Roglew
  module GL
    COMPRESSED_ALPHA_ARB               = 0x84E9 unless const_defined? :COMPRESSED_ALPHA_ARB
    COMPRESSED_INTENSITY_ARB           = 0x84EC unless const_defined? :COMPRESSED_INTENSITY_ARB
    COMPRESSED_LUMINANCE_ALPHA_ARB     = 0x84EB unless const_defined? :COMPRESSED_LUMINANCE_ALPHA_ARB
    COMPRESSED_LUMINANCE_ARB           = 0x84EA unless const_defined? :COMPRESSED_LUMINANCE_ARB
    COMPRESSED_RGB_ARB                 = 0x84ED unless const_defined? :COMPRESSED_RGB_ARB
    COMPRESSED_RGBA_ARB                = 0x84EE unless const_defined? :COMPRESSED_RGBA_ARB
    COMPRESSED_TEXTURE_FORMATS_ARB     = 0x86A3 unless const_defined? :COMPRESSED_TEXTURE_FORMATS_ARB
    NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A2 unless const_defined? :NUM_COMPRESSED_TEXTURE_FORMATS_ARB
    TEXTURE_COMPRESSED_ARB             = 0x86A1 unless const_defined? :TEXTURE_COMPRESSED_ARB
    TEXTURE_COMPRESSED_IMAGE_SIZE_ARB  = 0x86A0 unless const_defined? :TEXTURE_COMPRESSED_IMAGE_SIZE_ARB
    TEXTURE_COMPRESSION_HINT_ARB       = 0x84EF unless const_defined? :TEXTURE_COMPRESSION_HINT_ARB
  end
end

module GL_ARB_texture_compression
  module RenderContext
    include Roglew::GLExtension

    functions [:glCompressedTexImage1DARB, [ :uint, :int, :uint, :int, :int, :int, :pointer ], :void],
              [:glCompressedTexImage2DARB, [ :uint, :int, :uint, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedTexImage3DARB, [ :uint, :int, :uint, :int, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedTexSubImage1DARB, [ :uint, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedTexSubImage2DARB, [ :uint, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedTexSubImage3DARB, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glGetCompressedTexImageARB, [ :uint, :int, :pointer ], :void]
  end
end

