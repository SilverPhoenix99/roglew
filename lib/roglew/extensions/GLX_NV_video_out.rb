module Roglew
  module GLX
    VIDEO_OUT_COLOR_NV              ||= 0x20C3
    VIDEO_OUT_ALPHA_NV              ||= 0x20C4
    VIDEO_OUT_DEPTH_NV              ||= 0x20C5
    VIDEO_OUT_COLOR_AND_ALPHA_NV    ||= 0x20C6
    VIDEO_OUT_COLOR_AND_DEPTH_NV    ||= 0x20C7
    VIDEO_OUT_FRAME_NV              ||= 0x20C8
    VIDEO_OUT_FIELD_1_NV            ||= 0x20C9
    VIDEO_OUT_FIELD_2_NV            ||= 0x20CA
    VIDEO_OUT_STACKED_FIELDS_1_2_NV ||= 0x20CB
    VIDEO_OUT_STACKED_FIELDS_2_1_NV ||= 0x20CC
  end
end

module GLX_NV_video_out
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #int glXBindVideoImageNV(Display* dpy, GLXVideoDeviceNV VideoDevice, GLXPbuffer pbuf, int iVideoBuffer)
      [:glXBindVideoImageNV, [:pointer, :uint, :int, :int], :int],

      #int glXGetVideoDeviceNV(Display* dpy, int screen, int numVideoDevices, GLXVideoDeviceNV pVideoDevice)
      [:glXGetVideoDeviceNV, [:pointer, :int, :int, :uint], :int],

      #int glXGetVideoInfoNV(
      #   Display  dpy,
      #   int screen,
      #   GLXVideoDeviceNV VideoDevice,
      #   unsigned long *pulCounterOutputPbuffer,
      #   unsigned long *pulCounterOutputVideo)
      [:glXGetVideoInfoNV, [:pointer, :int, :uint, :pointer, :pointer], :int],

      #int glXReleaseVideoDeviceNV(Display* dpy, int screen, GLXVideoDeviceNV VideoDevice)
      [:glXReleaseVideoDeviceNV, [:pointer, :int, :uint], :int],

      #int glXReleaseVideoImageNV(Display* dpy, GLXPbuffer pbuf)
      [:glXReleaseVideoImageNV, [:pointer, :int], :int],

      #int glXSendPbufferToVideoNV(
      #   Display* dpy,
      #   GLXPbuffer pbuf,
      #   int iBufferType,
      #   unsigned long *pulCounterPbuffer,
      #   GLboolean bBlock)
      [:glXSendPbufferToVideoNV, [:pointer, :int, :int, :pointer, :bool], :int]
    ]
  end
end