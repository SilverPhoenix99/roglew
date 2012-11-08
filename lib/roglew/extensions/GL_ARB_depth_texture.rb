module Roglew
  module GL
    DEPTH_COMPONENT16_ARB  = 0x81A5 unless const_defined? :DEPTH_COMPONENT16_ARB
    DEPTH_COMPONENT24_ARB  = 0x81A6 unless const_defined? :DEPTH_COMPONENT24_ARB
    DEPTH_COMPONENT32_ARB  = 0x81A7 unless const_defined? :DEPTH_COMPONENT32_ARB
    DEPTH_TEXTURE_MODE_ARB = 0x884B unless const_defined? :DEPTH_TEXTURE_MODE_ARB
    TEXTURE_DEPTH_SIZE_ARB = 0x884A unless const_defined? :TEXTURE_DEPTH_SIZE_ARB
  end
end