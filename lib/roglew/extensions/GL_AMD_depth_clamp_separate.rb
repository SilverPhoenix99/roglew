module Roglew
  module GL
    DEPTH_CLAMP_FAR_AMD  = 0x901F unless const_defined? :DEPTH_CLAMP_FAR_AMD
    DEPTH_CLAMP_NEAR_AMD = 0x901E unless const_defined? :DEPTH_CLAMP_NEAR_AMD
  end
end