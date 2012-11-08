module Roglew
  module GL
    ANY_SAMPLES_PASSED_CONSERVATIVE           = 0x8D6A unless const_defined? :ANY_SAMPLES_PASSED_CONSERVATIVE
    COMPRESSED_R11_EAC                        = 0x9270 unless const_defined? :COMPRESSED_R11_EAC
    COMPRESSED_RG11_EAC                       = 0x9272 unless const_defined? :COMPRESSED_RG11_EAC
    COMPRESSED_RGB8_ETC2                      = 0x9274 unless const_defined? :COMPRESSED_RGB8_ETC2
    COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2  = 0x9276 unless const_defined? :COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
    COMPRESSED_RGBA8_ETC2_EAC                 = 0x9278 unless const_defined? :COMPRESSED_RGBA8_ETC2_EAC
    COMPRESSED_SIGNED_R11_EAC                 = 0x9271 unless const_defined? :COMPRESSED_SIGNED_R11_EAC
    COMPRESSED_SIGNED_RG11_EAC                = 0x9273 unless const_defined? :COMPRESSED_SIGNED_RG11_EAC
    COMPRESSED_SRGB8_ALPHA8_ETC2_EAC          = 0x9279 unless const_defined? :COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
    COMPRESSED_SRGB8_ETC2                     = 0x9275 unless const_defined? :COMPRESSED_SRGB8_ETC2
    COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277 unless const_defined? :COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
    MAX_ELEMENT_INDEX                         = 0x8D6B unless const_defined? :MAX_ELEMENT_INDEX
    PRIMITIVE_RESTART_FIXED_INDEX             = 0x8D69 unless const_defined? :PRIMITIVE_RESTART_FIXED_INDEX
  end
end