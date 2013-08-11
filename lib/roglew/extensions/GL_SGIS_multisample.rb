module Roglew
  module GL
    GL_1PASS_SGIS             ||= 0x80A1
    GL_2PASS_0_SGIS           ||= 0x80A2
    GL_2PASS_1_SGIS           ||= 0x80A3
    GL_4PASS_0_SGIS           ||= 0x80A4
    GL_4PASS_1_SGIS           ||= 0x80A5
    GL_4PASS_2_SGIS           ||= 0x80A6
    GL_4PASS_3_SGIS           ||= 0x80A7
    MULTISAMPLE_SGIS          ||= 0x809D
    SAMPLE_ALPHA_TO_MASK_SGIS ||= 0x809E
    SAMPLE_ALPHA_TO_ONE_SGIS  ||= 0x809F
    SAMPLE_BUFFERS_SGIS       ||= 0x80A8
    SAMPLE_MASK_INVERT_SGIS   ||= 0x80AB
    SAMPLE_MASK_SGIS          ||= 0x80A0
    SAMPLE_MASK_VALUE_SGIS    ||= 0x80AA
    SAMPLE_PATTERN_SGIS       ||= 0x80AC
    SAMPLES_SGIS              ||= 0x80A9
  end
end

module GL_SGIS_multisample
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glSampleMaskSGIS, [ :float, :uchar ], :void],
        [:glSamplePatternSGIS, [ :uint ], :void]
    ]
  end
end

