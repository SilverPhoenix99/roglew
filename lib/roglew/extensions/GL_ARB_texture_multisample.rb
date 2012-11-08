module Roglew
  module GL
    INT_SAMPLER_2D_MULTISAMPLE                = 0x9109 unless const_defined? :INT_SAMPLER_2D_MULTISAMPLE
    INT_SAMPLER_2D_MULTISAMPLE_ARRAY          = 0x910C unless const_defined? :INT_SAMPLER_2D_MULTISAMPLE_ARRAY
    MAX_COLOR_TEXTURE_SAMPLES                 = 0x910E unless const_defined? :MAX_COLOR_TEXTURE_SAMPLES
    MAX_DEPTH_TEXTURE_SAMPLES                 = 0x910F unless const_defined? :MAX_DEPTH_TEXTURE_SAMPLES
    MAX_INTEGER_SAMPLES                       = 0x9110 unless const_defined? :MAX_INTEGER_SAMPLES
    MAX_SAMPLE_MASK_WORDS                     = 0x8E59 unless const_defined? :MAX_SAMPLE_MASK_WORDS
    PROXY_TEXTURE_2D_MULTISAMPLE              = 0x9101 unless const_defined? :PROXY_TEXTURE_2D_MULTISAMPLE
    PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY        = 0x9103 unless const_defined? :PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
    SAMPLE_MASK                               = 0x8E51 unless const_defined? :SAMPLE_MASK
    SAMPLE_MASK_VALUE                         = 0x8E52 unless const_defined? :SAMPLE_MASK_VALUE
    SAMPLE_POSITION                           = 0x8E50 unless const_defined? :SAMPLE_POSITION
    SAMPLER_2D_MULTISAMPLE                    = 0x9108 unless const_defined? :SAMPLER_2D_MULTISAMPLE
    SAMPLER_2D_MULTISAMPLE_ARRAY              = 0x910B unless const_defined? :SAMPLER_2D_MULTISAMPLE_ARRAY
    TEXTURE_2D_MULTISAMPLE                    = 0x9100 unless const_defined? :TEXTURE_2D_MULTISAMPLE
    TEXTURE_2D_MULTISAMPLE_ARRAY              = 0x9102 unless const_defined? :TEXTURE_2D_MULTISAMPLE_ARRAY
    TEXTURE_BINDING_2D_MULTISAMPLE            = 0x9104 unless const_defined? :TEXTURE_BINDING_2D_MULTISAMPLE
    TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY      = 0x9105 unless const_defined? :TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
    TEXTURE_FIXED_SAMPLE_LOCATIONS            = 0x9107 unless const_defined? :TEXTURE_FIXED_SAMPLE_LOCATIONS
    TEXTURE_SAMPLES                           = 0x9106 unless const_defined? :TEXTURE_SAMPLES
    UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE       = 0x910A unless const_defined? :UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
    UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D unless const_defined? :UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
  end
end

module GL_ARB_texture_multisample
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetMultisamplefv, [ :uint, :uint, :pointer ], :void],
              [:glSampleMaski, [ :uint, :uint ], :void],
              [:glTexImage2DMultisample, [ :uint, :int, :int, :int, :int, :uchar ], :void],
              [:glTexImage3DMultisample, [ :uint, :int, :int, :int, :int, :int, :uchar ], :void]
  end
end

