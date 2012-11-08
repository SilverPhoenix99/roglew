module Roglew
  module GL
    ACTIVE_TEXTURE_ARB        = 0x84E0 unless const_defined? :ACTIVE_TEXTURE_ARB
    CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1 unless const_defined? :CLIENT_ACTIVE_TEXTURE_ARB
    MAX_TEXTURE_UNITS_ARB     = 0x84E2 unless const_defined? :MAX_TEXTURE_UNITS_ARB
    TEXTURE0_ARB              = 0x84C0 unless const_defined? :TEXTURE0_ARB
    TEXTURE1_ARB              = 0x84C1 unless const_defined? :TEXTURE1_ARB
    TEXTURE10_ARB             = 0x84CA unless const_defined? :TEXTURE10_ARB
    TEXTURE11_ARB             = 0x84CB unless const_defined? :TEXTURE11_ARB
    TEXTURE12_ARB             = 0x84CC unless const_defined? :TEXTURE12_ARB
    TEXTURE13_ARB             = 0x84CD unless const_defined? :TEXTURE13_ARB
    TEXTURE14_ARB             = 0x84CE unless const_defined? :TEXTURE14_ARB
    TEXTURE15_ARB             = 0x84CF unless const_defined? :TEXTURE15_ARB
    TEXTURE16_ARB             = 0x84D0 unless const_defined? :TEXTURE16_ARB
    TEXTURE17_ARB             = 0x84D1 unless const_defined? :TEXTURE17_ARB
    TEXTURE18_ARB             = 0x84D2 unless const_defined? :TEXTURE18_ARB
    TEXTURE19_ARB             = 0x84D3 unless const_defined? :TEXTURE19_ARB
    TEXTURE2_ARB              = 0x84C2 unless const_defined? :TEXTURE2_ARB
    TEXTURE20_ARB             = 0x84D4 unless const_defined? :TEXTURE20_ARB
    TEXTURE21_ARB             = 0x84D5 unless const_defined? :TEXTURE21_ARB
    TEXTURE22_ARB             = 0x84D6 unless const_defined? :TEXTURE22_ARB
    TEXTURE23_ARB             = 0x84D7 unless const_defined? :TEXTURE23_ARB
    TEXTURE24_ARB             = 0x84D8 unless const_defined? :TEXTURE24_ARB
    TEXTURE25_ARB             = 0x84D9 unless const_defined? :TEXTURE25_ARB
    TEXTURE26_ARB             = 0x84DA unless const_defined? :TEXTURE26_ARB
    TEXTURE27_ARB             = 0x84DB unless const_defined? :TEXTURE27_ARB
    TEXTURE28_ARB             = 0x84DC unless const_defined? :TEXTURE28_ARB
    TEXTURE29_ARB             = 0x84DD unless const_defined? :TEXTURE29_ARB
    TEXTURE3_ARB              = 0x84C3 unless const_defined? :TEXTURE3_ARB
    TEXTURE30_ARB             = 0x84DE unless const_defined? :TEXTURE30_ARB
    TEXTURE31_ARB             = 0x84DF unless const_defined? :TEXTURE31_ARB
    TEXTURE4_ARB              = 0x84C4 unless const_defined? :TEXTURE4_ARB
    TEXTURE5_ARB              = 0x84C5 unless const_defined? :TEXTURE5_ARB
    TEXTURE6_ARB              = 0x84C6 unless const_defined? :TEXTURE6_ARB
    TEXTURE7_ARB              = 0x84C7 unless const_defined? :TEXTURE7_ARB
    TEXTURE8_ARB              = 0x84C8 unless const_defined? :TEXTURE8_ARB
    TEXTURE9_ARB              = 0x84C9 unless const_defined? :TEXTURE9_ARB
  end
end

module GL_ARB_multitexture
  module RenderContext
    include Roglew::GLExtension

    functions [:glActiveTextureARB, [ :uint ], :void],
              [:glClientActiveTextureARB, [ :uint ], :void],
              [:glMultiTexCoord1dARB, [ :uint, :double ], :void],
              [:glMultiTexCoord1dvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord1fARB, [ :uint, :float ], :void],
              [:glMultiTexCoord1fvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord1iARB, [ :uint, :int ], :void],
              [:glMultiTexCoord1ivARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord1sARB, [ :uint, :short ], :void],
              [:glMultiTexCoord1svARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2dARB, [ :uint, :double, :double ], :void],
              [:glMultiTexCoord2dvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2fARB, [ :uint, :float, :float ], :void],
              [:glMultiTexCoord2fvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2iARB, [ :uint, :int, :int ], :void],
              [:glMultiTexCoord2ivARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2sARB, [ :uint, :short, :short ], :void],
              [:glMultiTexCoord2svARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3dARB, [ :uint, :double, :double, :double ], :void],
              [:glMultiTexCoord3dvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3fARB, [ :uint, :float, :float, :float ], :void],
              [:glMultiTexCoord3fvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3iARB, [ :uint, :int, :int, :int ], :void],
              [:glMultiTexCoord3ivARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3sARB, [ :uint, :short, :short, :short ], :void],
              [:glMultiTexCoord3svARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4dARB, [ :uint, :double, :double, :double, :double ], :void],
              [:glMultiTexCoord4dvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4fARB, [ :uint, :float, :float, :float, :float ], :void],
              [:glMultiTexCoord4fvARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4iARB, [ :uint, :int, :int, :int, :int ], :void],
              [:glMultiTexCoord4ivARB, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4sARB, [ :uint, :short, :short, :short, :short ], :void],
              [:glMultiTexCoord4svARB, [ :uint, :pointer ], :void]
  end
end