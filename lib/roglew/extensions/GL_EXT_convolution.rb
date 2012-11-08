module Roglew
  module GL
    CONVOLUTION_1D_EXT               = 0x8010 unless const_defined? :CONVOLUTION_1D_EXT
    CONVOLUTION_2D_EXT               = 0x8011 unless const_defined? :CONVOLUTION_2D_EXT
    CONVOLUTION_BORDER_MODE_EXT      = 0x8013 unless const_defined? :CONVOLUTION_BORDER_MODE_EXT
    CONVOLUTION_FILTER_BIAS_EXT      = 0x8015 unless const_defined? :CONVOLUTION_FILTER_BIAS_EXT
    CONVOLUTION_FILTER_SCALE_EXT     = 0x8014 unless const_defined? :CONVOLUTION_FILTER_SCALE_EXT
    CONVOLUTION_FORMAT_EXT           = 0x8017 unless const_defined? :CONVOLUTION_FORMAT_EXT
    CONVOLUTION_HEIGHT_EXT           = 0x8019 unless const_defined? :CONVOLUTION_HEIGHT_EXT
    CONVOLUTION_WIDTH_EXT            = 0x8018 unless const_defined? :CONVOLUTION_WIDTH_EXT
    MAX_CONVOLUTION_HEIGHT_EXT       = 0x801B unless const_defined? :MAX_CONVOLUTION_HEIGHT_EXT
    MAX_CONVOLUTION_WIDTH_EXT        = 0x801A unless const_defined? :MAX_CONVOLUTION_WIDTH_EXT
    POST_CONVOLUTION_ALPHA_BIAS_EXT  = 0x8023 unless const_defined? :POST_CONVOLUTION_ALPHA_BIAS_EXT
    POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F unless const_defined? :POST_CONVOLUTION_ALPHA_SCALE_EXT
    POST_CONVOLUTION_BLUE_BIAS_EXT   = 0x8022 unless const_defined? :POST_CONVOLUTION_BLUE_BIAS_EXT
    POST_CONVOLUTION_BLUE_SCALE_EXT  = 0x801E unless const_defined? :POST_CONVOLUTION_BLUE_SCALE_EXT
    POST_CONVOLUTION_GREEN_BIAS_EXT  = 0x8021 unless const_defined? :POST_CONVOLUTION_GREEN_BIAS_EXT
    POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D unless const_defined? :POST_CONVOLUTION_GREEN_SCALE_EXT
    POST_CONVOLUTION_RED_BIAS_EXT    = 0x8020 unless const_defined? :POST_CONVOLUTION_RED_BIAS_EXT
    POST_CONVOLUTION_RED_SCALE_EXT   = 0x801C unless const_defined? :POST_CONVOLUTION_RED_SCALE_EXT
    REDUCE_EXT                       = 0x8016 unless const_defined? :REDUCE_EXT
    SEPARABLE_2D_EXT                 = 0x8012 unless const_defined? :SEPARABLE_2D_EXT
  end
end

module GL_EXT_convolution
  module RenderContext
    include Roglew::GLExtension

    functions [:glConvolutionFilter1DEXT, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void],
              [:glConvolutionFilter2DEXT, [ :uint, :uint, :int, :int, :uint, :uint, :pointer ], :void],
              [:glConvolutionParameterfEXT, [ :uint, :uint, :float ], :void],
              [:glConvolutionParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glConvolutionParameteriEXT, [ :uint, :uint, :int ], :void],
              [:glConvolutionParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glCopyConvolutionFilter1DEXT, [ :uint, :uint, :int, :int, :int ], :void],
              [:glCopyConvolutionFilter2DEXT, [ :uint, :uint, :int, :int, :int, :int ], :void],
              [:glGetConvolutionFilterEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetConvolutionParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetConvolutionParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetSeparableFilterEXT, [ :uint, :uint, :uint, :pointer, :pointer, :pointer ], :void],
              [:glSeparableFilter2DEXT, [ :uint, :uint, :int, :int, :uint, :uint, :pointer, :pointer ], :void]
  end
end

