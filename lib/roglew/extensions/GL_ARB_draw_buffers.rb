module Roglew
  module GL
    DRAW_BUFFER0_ARB     = 0x8825 unless const_defined? :DRAW_BUFFER0_ARB
    DRAW_BUFFER1_ARB     = 0x8826 unless const_defined? :DRAW_BUFFER1_ARB
    DRAW_BUFFER10_ARB    = 0x882F unless const_defined? :DRAW_BUFFER10_ARB
    DRAW_BUFFER11_ARB    = 0x8830 unless const_defined? :DRAW_BUFFER11_ARB
    DRAW_BUFFER12_ARB    = 0x8831 unless const_defined? :DRAW_BUFFER12_ARB
    DRAW_BUFFER13_ARB    = 0x8832 unless const_defined? :DRAW_BUFFER13_ARB
    DRAW_BUFFER14_ARB    = 0x8833 unless const_defined? :DRAW_BUFFER14_ARB
    DRAW_BUFFER15_ARB    = 0x8834 unless const_defined? :DRAW_BUFFER15_ARB
    DRAW_BUFFER2_ARB     = 0x8827 unless const_defined? :DRAW_BUFFER2_ARB
    DRAW_BUFFER3_ARB     = 0x8828 unless const_defined? :DRAW_BUFFER3_ARB
    DRAW_BUFFER4_ARB     = 0x8829 unless const_defined? :DRAW_BUFFER4_ARB
    DRAW_BUFFER5_ARB     = 0x882A unless const_defined? :DRAW_BUFFER5_ARB
    DRAW_BUFFER6_ARB     = 0x882B unless const_defined? :DRAW_BUFFER6_ARB
    DRAW_BUFFER7_ARB     = 0x882C unless const_defined? :DRAW_BUFFER7_ARB
    DRAW_BUFFER8_ARB     = 0x882D unless const_defined? :DRAW_BUFFER8_ARB
    DRAW_BUFFER9_ARB     = 0x882E unless const_defined? :DRAW_BUFFER9_ARB
    MAX_DRAW_BUFFERS_ARB = 0x8824 unless const_defined? :MAX_DRAW_BUFFERS_ARB
  end
end

module GL_ARB_draw_buffers
  module RenderContext
    include Roglew::GLExtension

    functions [:glDrawBuffersARB, [ :int, :pointer ], :void]
  end
end