module Roglew
  module GL
    SCALED_RESOLVE_FASTEST_EXT = 0x90BA unless const_defined? :SCALED_RESOLVE_FASTEST_EXT
    SCALED_RESOLVE_NICEST_EXT  = 0x90BB unless const_defined? :SCALED_RESOLVE_NICEST_EXT
  end
end