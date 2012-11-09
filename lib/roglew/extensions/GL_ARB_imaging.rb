module Roglew
  module GL
    BLEND_COLOR                         ||= 0x8005
    BLEND_EQUATION                      ||= 0x8009
    COLOR_MATRIX                        ||= 0x80B1
    COLOR_MATRIX_STACK_DEPTH            ||= 0x80B2
    COLOR_TABLE                         ||= 0x80D0
    COLOR_TABLE_ALPHA_SIZE              ||= 0x80DD
    COLOR_TABLE_BIAS                    ||= 0x80D7
    COLOR_TABLE_BLUE_SIZE               ||= 0x80DC
    COLOR_TABLE_FORMAT                  ||= 0x80D8
    COLOR_TABLE_GREEN_SIZE              ||= 0x80DB
    COLOR_TABLE_INTENSITY_SIZE          ||= 0x80DF
    COLOR_TABLE_LUMINANCE_SIZE          ||= 0x80DE
    COLOR_TABLE_RED_SIZE                ||= 0x80DA
    COLOR_TABLE_SCALE                   ||= 0x80D6
    COLOR_TABLE_WIDTH                   ||= 0x80D9
    CONSTANT_ALPHA                      ||= 0x8003
    CONSTANT_BORDER                     ||= 0x8151
    CONSTANT_COLOR                      ||= 0x8001
    CONVOLUTION_1D                      ||= 0x8010
    CONVOLUTION_2D                      ||= 0x8011
    CONVOLUTION_BORDER_COLOR            ||= 0x8154
    CONVOLUTION_BORDER_MODE             ||= 0x8013
    CONVOLUTION_FILTER_BIAS             ||= 0x8015
    CONVOLUTION_FILTER_SCALE            ||= 0x8014
    CONVOLUTION_FORMAT                  ||= 0x8017
    CONVOLUTION_HEIGHT                  ||= 0x8019
    CONVOLUTION_WIDTH                   ||= 0x8018
    FUNC_ADD                            ||= 0x8006
    FUNC_REVERSE_SUBTRACT               ||= 0x800B
    FUNC_SUBTRACT                       ||= 0x800A
    HISTOGRAM                           ||= 0x8024
    HISTOGRAM_ALPHA_SIZE                ||= 0x802B
    HISTOGRAM_BLUE_SIZE                 ||= 0x802A
    HISTOGRAM_FORMAT                    ||= 0x8027
    HISTOGRAM_GREEN_SIZE                ||= 0x8029
    HISTOGRAM_LUMINANCE_SIZE            ||= 0x802C
    HISTOGRAM_RED_SIZE                  ||= 0x8028
    HISTOGRAM_SINK                      ||= 0x802D
    HISTOGRAM_WIDTH                     ||= 0x8026
    IGNORE_BORDER                       ||= 0x8150
    MAX                                 ||= 0x8008
    MAX_COLOR_MATRIX_STACK_DEPTH        ||= 0x80B3
    MAX_CONVOLUTION_HEIGHT              ||= 0x801B
    MAX_CONVOLUTION_WIDTH               ||= 0x801A
    MIN                                 ||= 0x8007
    MINMAX                              ||= 0x802E
    MINMAX_FORMAT                       ||= 0x802F
    MINMAX_SINK                         ||= 0x8030
    ONE_MINUS_CONSTANT_ALPHA            ||= 0x8004
    ONE_MINUS_CONSTANT_COLOR            ||= 0x8002
    POST_COLOR_MATRIX_ALPHA_BIAS        ||= 0x80BB
    POST_COLOR_MATRIX_ALPHA_SCALE       ||= 0x80B7
    POST_COLOR_MATRIX_BLUE_BIAS         ||= 0x80BA
    POST_COLOR_MATRIX_BLUE_SCALE        ||= 0x80B6
    POST_COLOR_MATRIX_COLOR_TABLE       ||= 0x80D2
    POST_COLOR_MATRIX_GREEN_BIAS        ||= 0x80B9
    POST_COLOR_MATRIX_GREEN_SCALE       ||= 0x80B5
    POST_COLOR_MATRIX_RED_BIAS          ||= 0x80B8
    POST_COLOR_MATRIX_RED_SCALE         ||= 0x80B4
    POST_CONVOLUTION_ALPHA_BIAS         ||= 0x8023
    POST_CONVOLUTION_ALPHA_SCALE        ||= 0x801F
    POST_CONVOLUTION_BLUE_BIAS          ||= 0x8022
    POST_CONVOLUTION_BLUE_SCALE         ||= 0x801E
    POST_CONVOLUTION_COLOR_TABLE        ||= 0x80D1
    POST_CONVOLUTION_GREEN_BIAS         ||= 0x8021
    POST_CONVOLUTION_GREEN_SCALE        ||= 0x801D
    POST_CONVOLUTION_RED_BIAS           ||= 0x8020
    POST_CONVOLUTION_RED_SCALE          ||= 0x801C
    PROXY_COLOR_TABLE                   ||= 0x80D3
    PROXY_HISTOGRAM                     ||= 0x8025
    PROXY_POST_COLOR_MATRIX_COLOR_TABLE ||= 0x80D5
    PROXY_POST_CONVOLUTION_COLOR_TABLE  ||= 0x80D4
    REDUCE                              ||= 0x8016
    REPLICATE_BORDER                    ||= 0x8153
    SEPARABLE_2D                        ||= 0x8012
    TABLE_TOO_LARGE                     ||= 0x8031
    WRAP_BORDER                         ||= 0x8152
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