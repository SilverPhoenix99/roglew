module Roglew
  module GL
    ACTIVE_TEXTURE_ARB        ||= 0x84E0
    CLIENT_ACTIVE_TEXTURE_ARB ||= 0x84E1
    MAX_TEXTURE_UNITS_ARB     ||= 0x84E2
    TEXTURE0_ARB              ||= 0x84C0
    TEXTURE1_ARB              ||= 0x84C1
    TEXTURE10_ARB             ||= 0x84CA
    TEXTURE11_ARB             ||= 0x84CB
    TEXTURE12_ARB             ||= 0x84CC
    TEXTURE13_ARB             ||= 0x84CD
    TEXTURE14_ARB             ||= 0x84CE
    TEXTURE15_ARB             ||= 0x84CF
    TEXTURE16_ARB             ||= 0x84D0
    TEXTURE17_ARB             ||= 0x84D1
    TEXTURE18_ARB             ||= 0x84D2
    TEXTURE19_ARB             ||= 0x84D3
    TEXTURE2_ARB              ||= 0x84C2
    TEXTURE20_ARB             ||= 0x84D4
    TEXTURE21_ARB             ||= 0x84D5
    TEXTURE22_ARB             ||= 0x84D6
    TEXTURE23_ARB             ||= 0x84D7
    TEXTURE24_ARB             ||= 0x84D8
    TEXTURE25_ARB             ||= 0x84D9
    TEXTURE26_ARB             ||= 0x84DA
    TEXTURE27_ARB             ||= 0x84DB
    TEXTURE28_ARB             ||= 0x84DC
    TEXTURE29_ARB             ||= 0x84DD
    TEXTURE3_ARB              ||= 0x84C3
    TEXTURE30_ARB             ||= 0x84DE
    TEXTURE31_ARB             ||= 0x84DF
    TEXTURE4_ARB              ||= 0x84C4
    TEXTURE5_ARB              ||= 0x84C5
    TEXTURE6_ARB              ||= 0x84C6
    TEXTURE7_ARB              ||= 0x84C7
    TEXTURE8_ARB              ||= 0x84C8
    TEXTURE9_ARB              ||= 0x84C9
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