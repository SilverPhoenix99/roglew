module Roglew
  module GL
    CURRENT_TIME_NV     = 0x8E28
    FIELDS_NV           = 0x8E27
    FRAME_NV            = 0x8E26
    NUM_FILL_STREAMS_NV = 0x8E29
    PRESENT_DURATION_NV = 0x8E2B
    PRESENT_TIME_NV     = 0x8E2A
  end
end

module GL_NV_present_video
  module RenderContext
    include GLExtension

    functions [:glGetVideoi64vNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVideoivNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVideoui64vNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVideouivNV, [ :uint, :uint, :pointer ], :void],
              [:glPresentFrameDualFillNV, [ :uint, :uint64, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glPresentFrameKeyedNV, [ :uint, :uint64, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void]
  end
end

