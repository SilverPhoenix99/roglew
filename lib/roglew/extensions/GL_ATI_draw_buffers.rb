module Roglew
  module GL
    DRAW_BUFFER0_ATI     = 0x8825
    DRAW_BUFFER1_ATI     = 0x8826
    DRAW_BUFFER10_ATI    = 0x882F
    DRAW_BUFFER11_ATI    = 0x8830
    DRAW_BUFFER12_ATI    = 0x8831
    DRAW_BUFFER13_ATI    = 0x8832
    DRAW_BUFFER14_ATI    = 0x8833
    DRAW_BUFFER15_ATI    = 0x8834
    DRAW_BUFFER2_ATI     = 0x8827
    DRAW_BUFFER3_ATI     = 0x8828
    DRAW_BUFFER4_ATI     = 0x8829
    DRAW_BUFFER5_ATI     = 0x882A
    DRAW_BUFFER6_ATI     = 0x882B
    DRAW_BUFFER7_ATI     = 0x882C
    DRAW_BUFFER8_ATI     = 0x882D
    DRAW_BUFFER9_ATI     = 0x882E
    MAX_DRAW_BUFFERS_ATI = 0x8824
  end
end

module GL_ATI_draw_buffers
  module RenderContext
    include GLExtension

    functions [:glDrawBuffersATI, [ :int, :pointer ], :void]
  end
end

