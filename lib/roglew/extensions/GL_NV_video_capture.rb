module Roglew
  module GL
    FAILURE_NV                               ||= 0x9030
    FIELD_LOWER_NV                           ||= 0x9023
    FIELD_UPPER_NV                           ||= 0x9022
    LAST_VIDEO_CAPTURE_STATUS_NV             ||= 0x9027
    NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV      ||= 0x9025
    NUM_VIDEO_CAPTURE_STREAMS_NV             ||= 0x9024
    PARTIAL_SUCCESS_NV                       ||= 0x902E
    SUCCESS_NV                               ||= 0x902F
    VIDEO_BUFFER_BINDING_NV                  ||= 0x9021
    VIDEO_BUFFER_INTERNAL_FORMAT_NV          ||= 0x902D
    VIDEO_BUFFER_NV                          ||= 0x9020
    VIDEO_BUFFER_PITCH_NV                    ||= 0x9028
    VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV      ||= 0x903B
    VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV      ||= 0x903A
    VIDEO_CAPTURE_FRAME_HEIGHT_NV            ||= 0x9039
    VIDEO_CAPTURE_FRAME_WIDTH_NV             ||= 0x9038
    VIDEO_CAPTURE_SURFACE_ORIGIN_NV          ||= 0x903C
    VIDEO_CAPTURE_TO_422_SUPPORTED_NV        ||= 0x9026
    VIDEO_COLOR_CONVERSION_MATRIX_NV         ||= 0x9029
    VIDEO_COLOR_CONVERSION_MAX_NV            ||= 0x902A
    VIDEO_COLOR_CONVERSION_MIN_NV            ||= 0x902B
    VIDEO_COLOR_CONVERSION_OFFSET_NV         ||= 0x902C
    YCBAYCR8A_4224_NV                        ||= 0x9032
    YCBYCR8_422_NV                           ||= 0x9031
    Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV ||= 0x9036
    Z4Y12Z4CB12Z4CR12_444_NV                 ||= 0x9037
    Z4Y12Z4CB12Z4Y12Z4CR12_422_NV            ||= 0x9035
    Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV ||= 0x9034
    Z6Y10Z6CB10Z6Y10Z6CR10_422_NV            ||= 0x9033
  end
end

module GL_NV_video_capture
  module RenderContext
    include Roglew::GLExtension

    functions [:glBeginVideoCaptureNV, [ :uint ], :void],
              [:glBindVideoCaptureStreamBufferNV, [ :uint, :uint, :uint, :int64 ], :void],
              [:glBindVideoCaptureStreamTextureNV, [ :uint, :uint, :uint, :uint, :uint ], :void],
              [:glEndVideoCaptureNV, [ :uint ], :void],
              [:glGetVideoCaptureivNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVideoCaptureStreamdvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetVideoCaptureStreamfvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetVideoCaptureStreamivNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glVideoCaptureNV, [ :uint, :pointer, :pointer ], :uint],
              [:glVideoCaptureStreamParameterdvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glVideoCaptureStreamParameterfvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glVideoCaptureStreamParameterivNV, [ :uint, :uint, :uint, :pointer ], :void]
  end
end

