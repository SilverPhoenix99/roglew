module Roglew
  module GL
    N1PASS_EXT               ||= 0x80A1
    N2PASS_0_EXT             ||= 0x80A2
    N2PASS_1_EXT             ||= 0x80A3
    N4PASS_0_EXT             ||= 0x80A4
    N4PASS_1_EXT             ||= 0x80A5
    N4PASS_2_EXT             ||= 0x80A6
    N4PASS_3_EXT             ||= 0x80A7
    MULTISAMPLE_BIT_EXT      ||= 0x20000000
    MULTISAMPLE_EXT          ||= 0x809D
    SAMPLE_ALPHA_TO_MASK_EXT ||= 0x809E
    SAMPLE_ALPHA_TO_ONE_EXT  ||= 0x809F
    SAMPLE_BUFFERS_EXT       ||= 0x80A8
    SAMPLE_MASK_EXT          ||= 0x80A0
    SAMPLE_MASK_INVERT_EXT   ||= 0x80AB
    SAMPLE_MASK_VALUE_EXT    ||= 0x80AA
    SAMPLE_PATTERN_EXT       ||= 0x80AC
    SAMPLES_EXT              ||= 0x80A9
  end
end

module GL_EXT_multisample
  module RenderContext
    include Roglew::GLExtension

    functions [:glSampleMaskEXT, [ :float, :uchar ], :void],
              [:glSamplePatternEXT, [ :uint ], :void]
  end
end

