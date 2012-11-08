module Roglew
  module GL
    MODULATE_ADD_ATI        = 0x8744 unless const_defined? :MODULATE_ADD_ATI
    MODULATE_SIGNED_ADD_ATI = 0x8745 unless const_defined? :MODULATE_SIGNED_ADD_ATI
    MODULATE_SUBTRACT_ATI   = 0x8746 unless const_defined? :MODULATE_SUBTRACT_ATI
  end
end