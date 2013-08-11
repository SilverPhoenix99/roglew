module Roglew
  module GLX
    DEVICE_ID_NV               ||= 0x20CD
    UNIQUE_ID_NV               ||= 0x20CE
    NUM_VIDEO_CAPTURE_SLOTS_NV ||= 0x20CF
  end
end

module GLX_NV_video_capture
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #int glXBindVideoCaptureDeviceNV(Display* dpy, unsigned int video_capture_slot, GLXVideoCaptureDeviceNV device)
      [:glXBindVideoCaptureDeviceNV, [:pointer, :uint, :int], :int],

      #GLXVideoCaptureDeviceNV * glXEnumerateVideoCaptureDevicesNV(Display* dpy, int screen, int *nelements)
      [:glXEnumerateVideoCaptureDevicesNV, [:pointer, :int, :pointer], :pointer],

      #void glXLockVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device)
      [:glXLockVideoCaptureDeviceNV, [:pointer, :int], :void],

      #int glXQueryVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device, int attribute, int *value)
      [:glXQueryVideoCaptureDeviceNV, [:pointer, :int, :int, :pointer], :int],

      #void glXReleaseVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device)
      [:glXReleaseVideoCaptureDeviceNV, [:pointer, :int], :void]
    ]
  end
end