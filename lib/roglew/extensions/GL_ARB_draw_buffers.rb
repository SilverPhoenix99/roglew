module Roglew
  module GL
    DRAW_BUFFER0_ARB     = 0x8825
    DRAW_BUFFER1_ARB     = 0x8826
    DRAW_BUFFER10_ARB    = 0x882F
    DRAW_BUFFER11_ARB    = 0x8830
    DRAW_BUFFER12_ARB    = 0x8831
    DRAW_BUFFER13_ARB    = 0x8832
    DRAW_BUFFER14_ARB    = 0x8833
    DRAW_BUFFER15_ARB    = 0x8834
    DRAW_BUFFER2_ARB     = 0x8827
    DRAW_BUFFER3_ARB     = 0x8828
    DRAW_BUFFER4_ARB     = 0x8829
    DRAW_BUFFER5_ARB     = 0x882A
    DRAW_BUFFER6_ARB     = 0x882B
    DRAW_BUFFER7_ARB     = 0x882C
    DRAW_BUFFER8_ARB     = 0x882D
    DRAW_BUFFER9_ARB     = 0x882E
    MAX_DRAW_BUFFERS_ARB = 0x8824
  end
end

module GL_ARB_draw_buffers
  module RenderContext
    include GLExtension

    functions [:glDrawBuffersARB, [ :int, :pointer ], :void]
  end
end