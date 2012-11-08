module Roglew
  module GL
    N1PASS_EXT               = 0x80A1 unless const_defined? :N1PASS_EXT
    N2PASS_0_EXT             = 0x80A2 unless const_defined? :N2PASS_0_EXT
    N2PASS_1_EXT             = 0x80A3 unless const_defined? :N2PASS_1_EXT
    N4PASS_0_EXT             = 0x80A4 unless const_defined? :N4PASS_0_EXT
    N4PASS_1_EXT             = 0x80A5 unless const_defined? :N4PASS_1_EXT
    N4PASS_2_EXT             = 0x80A6 unless const_defined? :N4PASS_2_EXT
    N4PASS_3_EXT             = 0x80A7 unless const_defined? :N4PASS_3_EXT
    MULTISAMPLE_BIT_EXT      = 0x20000000 unless const_defined? :MULTISAMPLE_BIT_EXT
    MULTISAMPLE_EXT          = 0x809D unless const_defined? :MULTISAMPLE_EXT
    SAMPLE_ALPHA_TO_MASK_EXT = 0x809E unless const_defined? :SAMPLE_ALPHA_TO_MASK_EXT
    SAMPLE_ALPHA_TO_ONE_EXT  = 0x809F unless const_defined? :SAMPLE_ALPHA_TO_ONE_EXT
    SAMPLE_BUFFERS_EXT       = 0x80A8 unless const_defined? :SAMPLE_BUFFERS_EXT
    SAMPLE_MASK_EXT          = 0x80A0 unless const_defined? :SAMPLE_MASK_EXT
    SAMPLE_MASK_INVERT_EXT   = 0x80AB unless const_defined? :SAMPLE_MASK_INVERT_EXT
    SAMPLE_MASK_VALUE_EXT    = 0x80AA unless const_defined? :SAMPLE_MASK_VALUE_EXT
    SAMPLE_PATTERN_EXT       = 0x80AC unless const_defined? :SAMPLE_PATTERN_EXT
    SAMPLES_EXT              = 0x80A9 unless const_defined? :SAMPLES_EXT
  end
end

module GL_EXT_multisample
  module RenderContext
    include Roglew::GLExtension

    functions [:glSampleMaskEXT, [ :float, :uchar ], :void],
              [:glSamplePatternEXT, [ :uint ], :void]
  end
end

