module Roglew
  module GL
    DEPTH_STENCIL_EXT        = 0x84F9 unless const_defined? :DEPTH_STENCIL_EXT
    DEPTH24_STENCIL8_EXT     = 0x88F0 unless const_defined? :DEPTH24_STENCIL8_EXT
    TEXTURE_STENCIL_SIZE_EXT = 0x88F1 unless const_defined? :TEXTURE_STENCIL_SIZE_EXT
    UNSIGNED_INT_24_8_EXT    = 0x84FA unless const_defined? :UNSIGNED_INT_24_8_EXT
  end
end