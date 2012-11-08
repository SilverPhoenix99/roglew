module Roglew
  module GL
    COORD_REPLACE_ARB = 0x8862 unless const_defined? :COORD_REPLACE_ARB
    POINT_SPRITE_ARB  = 0x8861 unless const_defined? :POINT_SPRITE_ARB
  end
end