module Roglew
  module GL
    ALPHA_FLOAT16_APPLE           = 0x881C unless const_defined? :ALPHA_FLOAT16_APPLE
    ALPHA_FLOAT32_APPLE           = 0x8816 unless const_defined? :ALPHA_FLOAT32_APPLE
    COLOR_FLOAT_APPLE             = 0x8A0F unless const_defined? :COLOR_FLOAT_APPLE
    HALF_APPLE                    = 0x140B unless const_defined? :HALF_APPLE
    INTENSITY_FLOAT16_APPLE       = 0x881D unless const_defined? :INTENSITY_FLOAT16_APPLE
    INTENSITY_FLOAT32_APPLE       = 0x8817 unless const_defined? :INTENSITY_FLOAT32_APPLE
    LUMINANCE_ALPHA_FLOAT16_APPLE = 0x881F unless const_defined? :LUMINANCE_ALPHA_FLOAT16_APPLE
    LUMINANCE_ALPHA_FLOAT32_APPLE = 0x8819 unless const_defined? :LUMINANCE_ALPHA_FLOAT32_APPLE
    LUMINANCE_FLOAT16_APPLE       = 0x881E unless const_defined? :LUMINANCE_FLOAT16_APPLE
    LUMINANCE_FLOAT32_APPLE       = 0x8818 unless const_defined? :LUMINANCE_FLOAT32_APPLE
    RGB_FLOAT16_APPLE             = 0x881B unless const_defined? :RGB_FLOAT16_APPLE
    RGB_FLOAT32_APPLE             = 0x8815 unless const_defined? :RGB_FLOAT32_APPLE
    RGBA_FLOAT16_APPLE            = 0x881A unless const_defined? :RGBA_FLOAT16_APPLE
    RGBA_FLOAT32_APPLE            = 0x8814 unless const_defined? :RGBA_FLOAT32_APPLE
  end
end