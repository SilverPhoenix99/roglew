module Roglew
  module GL
    READ_PIXEL_DATA_RANGE_LENGTH_NV   = 0x887B
    READ_PIXEL_DATA_RANGE_NV          = 0x8879
    READ_PIXEL_DATA_RANGE_POINTER_NV  = 0x887D
    WRITE_PIXEL_DATA_RANGE_LENGTH_NV  = 0x887A
    WRITE_PIXEL_DATA_RANGE_NV         = 0x8878
    WRITE_PIXEL_DATA_RANGE_POINTER_NV = 0x887C
  end
end

module GL_NV_pixel_data_range
  module RenderContext
    include Roglew::GLExtension

    functions [:glFlushPixelDataRangeNV, [ :uint ], :void],
              [:glPixelDataRangeNV, [ :uint, :int, :pointer ], :void]
  end
end

