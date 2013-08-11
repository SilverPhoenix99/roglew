module Roglew
  module GL
    INT_SAMPLER_2D_MULTISAMPLE                ||= 0x9109
    INT_SAMPLER_2D_MULTISAMPLE_ARRAY          ||= 0x910C
    MAX_COLOR_TEXTURE_SAMPLES                 ||= 0x910E
    MAX_DEPTH_TEXTURE_SAMPLES                 ||= 0x910F
    MAX_INTEGER_SAMPLES                       ||= 0x9110
    MAX_SAMPLE_MASK_WORDS                     ||= 0x8E59
    PROXY_TEXTURE_2D_MULTISAMPLE              ||= 0x9101
    PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY        ||= 0x9103
    SAMPLE_MASK                               ||= 0x8E51
    SAMPLE_MASK_VALUE                         ||= 0x8E52
    SAMPLE_POSITION                           ||= 0x8E50
    SAMPLER_2D_MULTISAMPLE                    ||= 0x9108
    SAMPLER_2D_MULTISAMPLE_ARRAY              ||= 0x910B
    TEXTURE_2D_MULTISAMPLE                    ||= 0x9100
    TEXTURE_2D_MULTISAMPLE_ARRAY              ||= 0x9102
    TEXTURE_BINDING_2D_MULTISAMPLE            ||= 0x9104
    TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY      ||= 0x9105
    TEXTURE_FIXED_SAMPLE_LOCATIONS            ||= 0x9107
    TEXTURE_SAMPLES                           ||= 0x9106
    UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE       ||= 0x910A
    UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY ||= 0x910D
  end
end

module GL_ARB_texture_multisample
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glGetMultisamplefv, [ :uint, :uint, :pointer ], :void],
        [:glSampleMaski, [ :uint, :uint ], :void],
        [:glTexImage2DMultisample, [ :uint, :int, :int, :int, :int, :uchar ], :void],
        [:glTexImage3DMultisample, [ :uint, :int, :int, :int, :int, :int, :uchar ], :void]
    ]
  end
end

