module Roglew
  module GL
    CMYK_EXT             = 0x800C unless const_defined? :CMYK_EXT
    CMYKA_EXT            = 0x800D unless const_defined? :CMYKA_EXT
    PACK_CMYK_HINT_EXT   = 0x800E unless const_defined? :PACK_CMYK_HINT_EXT
    UNPACK_CMYK_HINT_EXT = 0x800F unless const_defined? :UNPACK_CMYK_HINT_EXT
  end
end