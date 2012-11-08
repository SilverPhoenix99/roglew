module Roglew
  module GL
    COMPARE_R_TO_TEXTURE_ARB = 0x884E unless const_defined? :COMPARE_R_TO_TEXTURE_ARB
    TEXTURE_COMPARE_FUNC_ARB = 0x884D unless const_defined? :TEXTURE_COMPARE_FUNC_ARB
    TEXTURE_COMPARE_MODE_ARB = 0x884C unless const_defined? :TEXTURE_COMPARE_MODE_ARB
  end
end