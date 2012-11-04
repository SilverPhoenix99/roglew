module Roglew
  module GL
    INT_SAMPLER_RENDERBUFFER_NV                = 0x8E57
    MAX_SAMPLE_MASK_WORDS_NV                   = 0x8E59
    SAMPLE_MASK_NV                             = 0x8E51
    SAMPLE_MASK_VALUE_NV                       = 0x8E52
    SAMPLE_POSITION_NV                         = 0x8E50
    SAMPLER_RENDERBUFFER_NV                    = 0x8E56
    TEXTURE_BINDING_RENDERBUFFER_NV            = 0x8E53
    TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV = 0x8E54
    TEXTURE_RENDERBUFFER_NV                    = 0x8E55
    UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV       = 0x8E58
  end
end

module GL_NV_explicit_multisample
  module RenderContext
    include Roglew::GLExtension

    functions
  end
end

