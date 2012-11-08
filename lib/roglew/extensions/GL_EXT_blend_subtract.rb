module Roglew
  module GL
    FUNC_REVERSE_SUBTRACT_EXT = 0x800B unless const_defined? :FUNC_REVERSE_SUBTRACT_EXT
    FUNC_SUBTRACT_EXT         = 0x800A unless const_defined? :FUNC_SUBTRACT_EXT
    MAX_EXT                   = 0x8008 unless const_defined? :MAX_EXT
    MIN_EXT                   = 0x8007 unless const_defined? :MIN_EXT
  end
end