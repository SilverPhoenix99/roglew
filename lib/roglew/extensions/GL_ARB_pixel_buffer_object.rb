module Roglew
  module GL
    PIXEL_PACK_BUFFER_ARB           = 0x88EB unless const_defined? :PIXEL_PACK_BUFFER_ARB
    PIXEL_PACK_BUFFER_BINDING_ARB   = 0x88ED unless const_defined? :PIXEL_PACK_BUFFER_BINDING_ARB
    PIXEL_UNPACK_BUFFER_ARB         = 0x88EC unless const_defined? :PIXEL_UNPACK_BUFFER_ARB
    PIXEL_UNPACK_BUFFER_BINDING_ARB = 0x88EF unless const_defined? :PIXEL_UNPACK_BUFFER_BINDING_ARB
    SAMPLES_PASSED_ARB              = 0x8914 unless const_defined? :SAMPLES_PASSED_ARB
  end
end