module Roglew
  module GL
    DRAW_BUFFER0_ATI     = 0x8825 unless const_defined? :DRAW_BUFFER0_ATI
    DRAW_BUFFER1_ATI     = 0x8826 unless const_defined? :DRAW_BUFFER1_ATI
    DRAW_BUFFER10_ATI    = 0x882F unless const_defined? :DRAW_BUFFER10_ATI
    DRAW_BUFFER11_ATI    = 0x8830 unless const_defined? :DRAW_BUFFER11_ATI
    DRAW_BUFFER12_ATI    = 0x8831 unless const_defined? :DRAW_BUFFER12_ATI
    DRAW_BUFFER13_ATI    = 0x8832 unless const_defined? :DRAW_BUFFER13_ATI
    DRAW_BUFFER14_ATI    = 0x8833 unless const_defined? :DRAW_BUFFER14_ATI
    DRAW_BUFFER15_ATI    = 0x8834 unless const_defined? :DRAW_BUFFER15_ATI
    DRAW_BUFFER2_ATI     = 0x8827 unless const_defined? :DRAW_BUFFER2_ATI
    DRAW_BUFFER3_ATI     = 0x8828 unless const_defined? :DRAW_BUFFER3_ATI
    DRAW_BUFFER4_ATI     = 0x8829 unless const_defined? :DRAW_BUFFER4_ATI
    DRAW_BUFFER5_ATI     = 0x882A unless const_defined? :DRAW_BUFFER5_ATI
    DRAW_BUFFER6_ATI     = 0x882B unless const_defined? :DRAW_BUFFER6_ATI
    DRAW_BUFFER7_ATI     = 0x882C unless const_defined? :DRAW_BUFFER7_ATI
    DRAW_BUFFER8_ATI     = 0x882D unless const_defined? :DRAW_BUFFER8_ATI
    DRAW_BUFFER9_ATI     = 0x882E unless const_defined? :DRAW_BUFFER9_ATI
    MAX_DRAW_BUFFERS_ATI = 0x8824 unless const_defined? :MAX_DRAW_BUFFERS_ATI
  end
end

module GL_ATI_draw_buffers
  module RenderContext
    include Roglew::GLExtension

    functions [:glDrawBuffersATI, [ :int, :pointer ], :void]
  end
end

