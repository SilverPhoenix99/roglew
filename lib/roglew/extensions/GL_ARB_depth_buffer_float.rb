module Roglew
  module GL
    DEPTH_COMPONENT32F             = 0x8CAC unless const_defined? :DEPTH_COMPONENT32F
    DEPTH32F_STENCIL8              = 0x8CAD unless const_defined? :DEPTH32F_STENCIL8
    FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD unless const_defined? :FLOAT_32_UNSIGNED_INT_24_8_REV
  end
end