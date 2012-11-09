module Roglew
  module WGL
    BIND_TO_VIDEO_RGB_AND_DEPTH_NV ||= 0x20C2
    BIND_TO_VIDEO_RGB_NV           ||= 0x20C0
    BIND_TO_VIDEO_RGBA_NV          ||= 0x20C1
    VIDEO_OUT_ALPHA_NV             ||= 0x20C4
    VIDEO_OUT_COLOR_AND_ALPHA_NV   ||= 0x20C6
    VIDEO_OUT_COLOR_AND_DEPTH_NV   ||= 0x20C7
    VIDEO_OUT_COLOR_NV             ||= 0x20C3
    VIDEO_OUT_DEPTH_NV             ||= 0x20C5
    VIDEO_OUT_FIELD_1              ||= 0x20C9
    VIDEO_OUT_FIELD_2              ||= 0x20CA
    VIDEO_OUT_FRAME                ||= 0x20C8
    VIDEO_OUT_STACKED_FIELDS_1_2   ||= 0x20CB
    VIDEO_OUT_STACKED_FIELDS_2_1   ||= 0x20CC
  end
end

module WGL_NV_video_output
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBindVideoImageNV, [ :pointer, :pointer, :int ], :bool ],
              [:wglGetVideoDeviceNV, [ :pointer, :int, :pointer ], :bool ],
              [:wglGetVideoInfoNV, [ :pointer, :pointer, :pointer ], :bool ],
              [:wglReleaseVideoDeviceNV, [ :pointer ], :bool ],
              [:wglReleaseVideoImageNV, [ :pointer, :int ], :bool ],
              [:wglSendPbufferToVideoNV, [ :pointer, :int, :pointer, :bool ], :bool ]
  end
end