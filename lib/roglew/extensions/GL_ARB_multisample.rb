module Roglew
  module GL
    MULTISAMPLE_ARB              = 0x809D unless const_defined? :MULTISAMPLE_ARB
    MULTISAMPLE_BIT_ARB          = 0x20000000 unless const_defined? :MULTISAMPLE_BIT_ARB
    SAMPLE_ALPHA_TO_COVERAGE_ARB = 0x809E unless const_defined? :SAMPLE_ALPHA_TO_COVERAGE_ARB
    SAMPLE_ALPHA_TO_ONE_ARB      = 0x809F unless const_defined? :SAMPLE_ALPHA_TO_ONE_ARB
    SAMPLE_BUFFERS_ARB           = 0x80A8 unless const_defined? :SAMPLE_BUFFERS_ARB
    SAMPLE_COVERAGE_ARB          = 0x80A0 unless const_defined? :SAMPLE_COVERAGE_ARB
    SAMPLE_COVERAGE_INVERT_ARB   = 0x80AB unless const_defined? :SAMPLE_COVERAGE_INVERT_ARB
    SAMPLE_COVERAGE_VALUE_ARB    = 0x80AA unless const_defined? :SAMPLE_COVERAGE_VALUE_ARB
    SAMPLES_ARB                  = 0x80A9 unless const_defined? :SAMPLES_ARB
  end
end

module GL_ARB_multisample
  module RenderContext
    include Roglew::GLExtension

    functions [:glSampleCoverageARB, [ :float, :uchar ], :void]
  end
end