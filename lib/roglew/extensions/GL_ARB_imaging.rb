module Roglew
  module GL
    BLEND_COLOR                         = 0x8005 unless const_defined? :BLEND_COLOR
    BLEND_EQUATION                      = 0x8009 unless const_defined? :BLEND_EQUATION
    COLOR_MATRIX                        = 0x80B1 unless const_defined? :COLOR_MATRIX
    COLOR_MATRIX_STACK_DEPTH            = 0x80B2 unless const_defined? :COLOR_MATRIX_STACK_DEPTH
    COLOR_TABLE                         = 0x80D0 unless const_defined? :COLOR_TABLE
    COLOR_TABLE_ALPHA_SIZE              = 0x80DD unless const_defined? :COLOR_TABLE_ALPHA_SIZE
    COLOR_TABLE_BIAS                    = 0x80D7 unless const_defined? :COLOR_TABLE_BIAS
    COLOR_TABLE_BLUE_SIZE               = 0x80DC unless const_defined? :COLOR_TABLE_BLUE_SIZE
    COLOR_TABLE_FORMAT                  = 0x80D8 unless const_defined? :COLOR_TABLE_FORMAT
    COLOR_TABLE_GREEN_SIZE              = 0x80DB unless const_defined? :COLOR_TABLE_GREEN_SIZE
    COLOR_TABLE_INTENSITY_SIZE          = 0x80DF unless const_defined? :COLOR_TABLE_INTENSITY_SIZE
    COLOR_TABLE_LUMINANCE_SIZE          = 0x80DE unless const_defined? :COLOR_TABLE_LUMINANCE_SIZE
    COLOR_TABLE_RED_SIZE                = 0x80DA unless const_defined? :COLOR_TABLE_RED_SIZE
    COLOR_TABLE_SCALE                   = 0x80D6 unless const_defined? :COLOR_TABLE_SCALE
    COLOR_TABLE_WIDTH                   = 0x80D9 unless const_defined? :COLOR_TABLE_WIDTH
    CONSTANT_ALPHA                      = 0x8003 unless const_defined? :CONSTANT_ALPHA
    CONSTANT_BORDER                     = 0x8151 unless const_defined? :CONSTANT_BORDER
    CONSTANT_COLOR                      = 0x8001 unless const_defined? :CONSTANT_COLOR
    CONVOLUTION_1D                      = 0x8010 unless const_defined? :CONVOLUTION_1D
    CONVOLUTION_2D                      = 0x8011 unless const_defined? :CONVOLUTION_2D
    CONVOLUTION_BORDER_COLOR            = 0x8154 unless const_defined? :CONVOLUTION_BORDER_COLOR
    CONVOLUTION_BORDER_MODE             = 0x8013 unless const_defined? :CONVOLUTION_BORDER_MODE
    CONVOLUTION_FILTER_BIAS             = 0x8015 unless const_defined? :CONVOLUTION_FILTER_BIAS
    CONVOLUTION_FILTER_SCALE            = 0x8014 unless const_defined? :CONVOLUTION_FILTER_SCALE
    CONVOLUTION_FORMAT                  = 0x8017 unless const_defined? :CONVOLUTION_FORMAT
    CONVOLUTION_HEIGHT                  = 0x8019 unless const_defined? :CONVOLUTION_HEIGHT
    CONVOLUTION_WIDTH                   = 0x8018 unless const_defined? :CONVOLUTION_WIDTH
    FUNC_ADD                            = 0x8006 unless const_defined? :FUNC_ADD
    FUNC_REVERSE_SUBTRACT               = 0x800B unless const_defined? :FUNC_REVERSE_SUBTRACT
    FUNC_SUBTRACT                       = 0x800A unless const_defined? :FUNC_SUBTRACT
    HISTOGRAM                           = 0x8024 unless const_defined? :HISTOGRAM
    HISTOGRAM_ALPHA_SIZE                = 0x802B unless const_defined? :HISTOGRAM_ALPHA_SIZE
    HISTOGRAM_BLUE_SIZE                 = 0x802A unless const_defined? :HISTOGRAM_BLUE_SIZE
    HISTOGRAM_FORMAT                    = 0x8027 unless const_defined? :HISTOGRAM_FORMAT
    HISTOGRAM_GREEN_SIZE                = 0x8029 unless const_defined? :HISTOGRAM_GREEN_SIZE
    HISTOGRAM_LUMINANCE_SIZE            = 0x802C unless const_defined? :HISTOGRAM_LUMINANCE_SIZE
    HISTOGRAM_RED_SIZE                  = 0x8028 unless const_defined? :HISTOGRAM_RED_SIZE
    HISTOGRAM_SINK                      = 0x802D unless const_defined? :HISTOGRAM_SINK
    HISTOGRAM_WIDTH                     = 0x8026 unless const_defined? :HISTOGRAM_WIDTH
    IGNORE_BORDER                       = 0x8150 unless const_defined? :IGNORE_BORDER
    MAX                                 = 0x8008 unless const_defined? :MAX
    MAX_COLOR_MATRIX_STACK_DEPTH        = 0x80B3 unless const_defined? :MAX_COLOR_MATRIX_STACK_DEPTH
    MAX_CONVOLUTION_HEIGHT              = 0x801B unless const_defined? :MAX_CONVOLUTION_HEIGHT
    MAX_CONVOLUTION_WIDTH               = 0x801A unless const_defined? :MAX_CONVOLUTION_WIDTH
    MIN                                 = 0x8007 unless const_defined? :MIN
    MINMAX                              = 0x802E unless const_defined? :MINMAX
    MINMAX_FORMAT                       = 0x802F unless const_defined? :MINMAX_FORMAT
    MINMAX_SINK                         = 0x8030 unless const_defined? :MINMAX_SINK
    ONE_MINUS_CONSTANT_ALPHA            = 0x8004 unless const_defined? :ONE_MINUS_CONSTANT_ALPHA
    ONE_MINUS_CONSTANT_COLOR            = 0x8002 unless const_defined? :ONE_MINUS_CONSTANT_COLOR
    POST_COLOR_MATRIX_ALPHA_BIAS        = 0x80BB unless const_defined? :POST_COLOR_MATRIX_ALPHA_BIAS
    POST_COLOR_MATRIX_ALPHA_SCALE       = 0x80B7 unless const_defined? :POST_COLOR_MATRIX_ALPHA_SCALE
    POST_COLOR_MATRIX_BLUE_BIAS         = 0x80BA unless const_defined? :POST_COLOR_MATRIX_BLUE_BIAS
    POST_COLOR_MATRIX_BLUE_SCALE        = 0x80B6 unless const_defined? :POST_COLOR_MATRIX_BLUE_SCALE
    POST_COLOR_MATRIX_COLOR_TABLE       = 0x80D2 unless const_defined? :POST_COLOR_MATRIX_COLOR_TABLE
    POST_COLOR_MATRIX_GREEN_BIAS        = 0x80B9 unless const_defined? :POST_COLOR_MATRIX_GREEN_BIAS
    POST_COLOR_MATRIX_GREEN_SCALE       = 0x80B5 unless const_defined? :POST_COLOR_MATRIX_GREEN_SCALE
    POST_COLOR_MATRIX_RED_BIAS          = 0x80B8 unless const_defined? :POST_COLOR_MATRIX_RED_BIAS
    POST_COLOR_MATRIX_RED_SCALE         = 0x80B4 unless const_defined? :POST_COLOR_MATRIX_RED_SCALE
    POST_CONVOLUTION_ALPHA_BIAS         = 0x8023 unless const_defined? :POST_CONVOLUTION_ALPHA_BIAS
    POST_CONVOLUTION_ALPHA_SCALE        = 0x801F unless const_defined? :POST_CONVOLUTION_ALPHA_SCALE
    POST_CONVOLUTION_BLUE_BIAS          = 0x8022 unless const_defined? :POST_CONVOLUTION_BLUE_BIAS
    POST_CONVOLUTION_BLUE_SCALE         = 0x801E unless const_defined? :POST_CONVOLUTION_BLUE_SCALE
    POST_CONVOLUTION_COLOR_TABLE        = 0x80D1 unless const_defined? :POST_CONVOLUTION_COLOR_TABLE
    POST_CONVOLUTION_GREEN_BIAS         = 0x8021 unless const_defined? :POST_CONVOLUTION_GREEN_BIAS
    POST_CONVOLUTION_GREEN_SCALE        = 0x801D unless const_defined? :POST_CONVOLUTION_GREEN_SCALE
    POST_CONVOLUTION_RED_BIAS           = 0x8020 unless const_defined? :POST_CONVOLUTION_RED_BIAS
    POST_CONVOLUTION_RED_SCALE          = 0x801C unless const_defined? :POST_CONVOLUTION_RED_SCALE
    PROXY_COLOR_TABLE                   = 0x80D3 unless const_defined? :PROXY_COLOR_TABLE
    PROXY_HISTOGRAM                     = 0x8025 unless const_defined? :PROXY_HISTOGRAM
    PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5 unless const_defined? :PROXY_POST_COLOR_MATRIX_COLOR_TABLE
    PROXY_POST_CONVOLUTION_COLOR_TABLE  = 0x80D4 unless const_defined? :PROXY_POST_CONVOLUTION_COLOR_TABLE
    REDUCE                              = 0x8016 unless const_defined? :REDUCE
    REPLICATE_BORDER                    = 0x8153 unless const_defined? :REPLICATE_BORDER
    SEPARABLE_2D                        = 0x8012 unless const_defined? :SEPARABLE_2D
    TABLE_TOO_LARGE                     = 0x8031 unless const_defined? :TABLE_TOO_LARGE
    WRAP_BORDER                         = 0x8152 unless const_defined? :WRAP_BORDER
  end
end

module GL_ARB_imaging
  module RenderContext
    include Roglew::GLExtension

    functions [:glColorSubTable,             [ :uint, :int, :int, :uint, :uint, :pointer ],                  :void],
              [:glColorTable,                [ :uint, :uint, :int, :uint, :uint, :pointer ],                 :void],
              [:glColorTableParameterfv,     [ :uint, :uint, :pointer ],                                     :void],
              [:glColorTableParameteriv,     [ :uint, :uint, :pointer ],                                     :void],
              [:glConvolutionFilter1D,       [ :uint, :uint, :int, :uint, :uint, :pointer ],                 :void],
              [:glConvolutionFilter2D,       [ :uint, :uint, :int, :int, :uint, :uint, :pointer ],           :void],
              [:glConvolutionParameterf,     [ :uint, :uint, :float ],                                       :void],
              [:glConvolutionParameterfv,    [ :uint, :uint, :pointer ],                                     :void],
              [:glConvolutionParameteri,     [ :uint, :uint, :int ],                                         :void],
              [:glConvolutionParameteriv,    [ :uint, :uint, :pointer ],                                     :void],
              [:glCopyColorSubTable,         [ :uint, :int, :int, :int, :int ],                              :void],
              [:glCopyColorTable,            [ :uint, :uint, :int, :int, :int ],                             :void],
              [:glCopyConvolutionFilter1D,   [ :uint, :uint, :int, :int, :int ],                             :void],
              [:glCopyConvolutionFilter2D,   [ :uint, :uint, :int, :int, :int, :int ],                       :void],
              [:glGetColorTable,             [ :uint, :uint, :uint, :pointer ],                              :void],
              [:glGetColorTableParameterfv,  [ :uint, :uint, :pointer ],                                     :void],
              [:glGetColorTableParameteriv,  [ :uint, :uint, :pointer ],                                     :void],
              [:glGetConvolutionFilter,      [ :uint, :uint, :uint, :pointer ],                              :void],
              [:glGetConvolutionParameterfv, [ :uint, :uint, :pointer ],                                     :void],
              [:glGetConvolutionParameteriv, [ :uint, :uint, :pointer ],                                     :void],
              [:glGetHistogram,              [ :uint, :uchar, :uint, :uint, :pointer ],                      :void],
              [:glGetHistogramParameterfv,   [ :uint, :uint, :pointer ],                                     :void],
              [:glGetHistogramParameteriv,   [ :uint, :uint, :pointer ],                                     :void],
              [:glGetMinmax,                 [ :uint, :uchar, :uint, :uint, :pointer ],                      :void],
              [:glGetMinmaxParameterfv,      [ :uint, :uint, :pointer ],                                     :void],
              [:glGetMinmaxParameteriv,      [ :uint, :uint, :pointer ],                                     :void],
              [:glGetSeparableFilter,        [ :uint, :uint, :uint, :pointer, :pointer, :pointer ],          :void],
              [:glHistogram,                 [ :uint, :int, :uint, :uchar ],                                 :void],
              [:glMinmax,                    [ :uint, :uint, :uchar ],                                       :void],
              [:glResetHistogram,            [ :uint ],                                                      :void],
              [:glResetMinmax,               [ :uint ],                                                      :void],
              [:glSeparableFilter2D,         [ :uint, :uint, :int, :int, :uint, :uint, :pointer, :pointer ], :void]
  end
end