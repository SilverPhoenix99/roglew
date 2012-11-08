module Roglew
  module GL
    MULTISAMPLE_3DFX     = 0x86B2 unless const_defined? :MULTISAMPLE_3DFX
    MULTISAMPLE_BIT_3DFX = 0x20000000 unless const_defined? :MULTISAMPLE_BIT_3DFX
    SAMPLE_BUFFERS_3DFX  = 0x86B3 unless const_defined? :SAMPLE_BUFFERS_3DFX
    SAMPLES_3DFX         = 0x86B4 unless const_defined? :SAMPLES_3DFX
  end
end