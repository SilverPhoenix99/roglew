module Roglew
  module GL
    MULTISAMPLE_ARB              = 0x809D
    MULTISAMPLE_BIT_ARB          = 0x20000000
    SAMPLE_ALPHA_TO_COVERAGE_ARB = 0x809E
    SAMPLE_ALPHA_TO_ONE_ARB      = 0x809F
    SAMPLE_BUFFERS_ARB           = 0x80A8
    SAMPLE_COVERAGE_ARB          = 0x80A0
    SAMPLE_COVERAGE_INVERT_ARB   = 0x80AB
    SAMPLE_COVERAGE_VALUE_ARB    = 0x80AA
    SAMPLES_ARB                  = 0x80A9
  end
end

module GL_ARB_multisample
  module RenderContext
    include Roglew::GLExtension

    functions [:glSampleCoverageARB, [ :float, :uchar ], :void]
  end
end