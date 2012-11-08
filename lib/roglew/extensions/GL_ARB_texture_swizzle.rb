module Roglew
  module GL
    TEXTURE_SWIZZLE_A    = 0x8E45 unless const_defined? :TEXTURE_SWIZZLE_A
    TEXTURE_SWIZZLE_B    = 0x8E44 unless const_defined? :TEXTURE_SWIZZLE_B
    TEXTURE_SWIZZLE_G    = 0x8E43 unless const_defined? :TEXTURE_SWIZZLE_G
    TEXTURE_SWIZZLE_R    = 0x8E42 unless const_defined? :TEXTURE_SWIZZLE_R
    TEXTURE_SWIZZLE_RGBA = 0x8E46 unless const_defined? :TEXTURE_SWIZZLE_RGBA
  end
end