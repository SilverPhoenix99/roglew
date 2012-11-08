module Roglew
  module GL
    COMPRESSED_RED = 0x8225 unless const_defined? :COMPRESSED_RED
    COMPRESSED_RG  = 0x8226 unless const_defined? :COMPRESSED_RG
    R16            = 0x822A unless const_defined? :R16
    R16F           = 0x822D unless const_defined? :R16F
    R16I           = 0x8233 unless const_defined? :R16I
    R16UI          = 0x8234 unless const_defined? :R16UI
    R32F           = 0x822E unless const_defined? :R32F
    R32I           = 0x8235 unless const_defined? :R32I
    R32UI          = 0x8236 unless const_defined? :R32UI
    R8             = 0x8229 unless const_defined? :R8
    R8I            = 0x8231 unless const_defined? :R8I
    R8UI           = 0x8232 unless const_defined? :R8UI
    RG             = 0x8227 unless const_defined? :RG
    RG_INTEGER     = 0x8228 unless const_defined? :RG_INTEGER
    RG16           = 0x822C unless const_defined? :RG16
    RG16F          = 0x822F unless const_defined? :RG16F
    RG16I          = 0x8239 unless const_defined? :RG16I
    RG16UI         = 0x823A unless const_defined? :RG16UI
    RG32F          = 0x8230 unless const_defined? :RG32F
    RG32I          = 0x823B unless const_defined? :RG32I
    RG32UI         = 0x823C unless const_defined? :RG32UI
    RG8            = 0x822B unless const_defined? :RG8
    RG8I           = 0x8237 unless const_defined? :RG8I
    RG8UI          = 0x8238 unless const_defined? :RG8UI
  end
end