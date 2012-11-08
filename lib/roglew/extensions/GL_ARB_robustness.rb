module Roglew
  module GL
    CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = 0x00000004 unless const_defined? :CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB
    GUILTY_CONTEXT_RESET_ARB           = 0x8253 unless const_defined? :GUILTY_CONTEXT_RESET_ARB
    INNOCENT_CONTEXT_RESET_ARB         = 0x8254 unless const_defined? :INNOCENT_CONTEXT_RESET_ARB
    LOSE_CONTEXT_ON_RESET_ARB          = 0x8252 unless const_defined? :LOSE_CONTEXT_ON_RESET_ARB
    NO_RESET_NOTIFICATION_ARB          = 0x8261 unless const_defined? :NO_RESET_NOTIFICATION_ARB
    RESET_NOTIFICATION_STRATEGY_ARB    = 0x8256 unless const_defined? :RESET_NOTIFICATION_STRATEGY_ARB
    UNKNOWN_CONTEXT_RESET_ARB          = 0x8255 unless const_defined? :UNKNOWN_CONTEXT_RESET_ARB
  end
end

module GL_ARB_robustness
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetGraphicsResetStatusARB, [  ], :uint],
              [:glGetnColorTableARB, [ :uint, :uint, :uint, :int, :pointer ], :void],
              [:glGetnCompressedTexImageARB, [ :uint, :int, :int, :pointer ], :void],
              [:glGetnConvolutionFilterARB, [ :uint, :uint, :uint, :int, :pointer ], :void],
              [:glGetnHistogramARB, [ :uint, :uchar, :uint, :uint, :int, :pointer ], :void],
              [:glGetnMapdvARB, [ :uint, :uint, :int, :pointer ], :void],
              [:glGetnMapfvARB, [ :uint, :uint, :int, :pointer ], :void],
              [:glGetnMapivARB, [ :uint, :uint, :int, :pointer ], :void],
              [:glGetnMinmaxARB, [ :uint, :uchar, :uint, :uint, :int, :pointer ], :void],
              [:glGetnPixelMapfvARB, [ :uint, :int, :pointer ], :void],
              [:glGetnPixelMapuivARB, [ :uint, :int, :pointer ], :void],
              [:glGetnPixelMapusvARB, [ :uint, :int, :pointer ], :void],
              [:glGetnPolygonStippleARB, [ :int, :pointer ], :void],
              [:glGetnSeparableFilterARB, [ :uint, :uint, :uint, :int, :pointer, :int, :pointer, :pointer ], :void],
              [:glGetnTexImageARB, [ :uint, :int, :uint, :uint, :int, :pointer ], :void],
              [:glGetnUniformdvARB, [ :uint, :int, :int, :pointer ], :void],
              [:glGetnUniformfvARB, [ :uint, :int, :int, :pointer ], :void],
              [:glGetnUniformivARB, [ :uint, :int, :int, :pointer ], :void],
              [:glGetnUniformuivARB, [ :uint, :int, :int, :pointer ], :void],
              [:glReadnPixelsARB, [ :int, :int, :int, :int, :uint, :uint, :int, :pointer ], :void]
  end
end