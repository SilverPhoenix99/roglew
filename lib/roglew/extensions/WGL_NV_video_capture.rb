module Roglew
  module WGL
    UNIQUE_ID_NV               = 0x20CE
    NUM_VIDEO_CAPTURE_SLOTS_NV = 0x20CF
  end
end

module WGL_NV_video_capture
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBindVideoCaptureDeviceNV, [ :uint, :pointer ], :bool ],
              [:wglEnumerateVideoCaptureDevicesNV, [ :pointer, :pointer ], :uint ],
              [:wglLockVideoCaptureDeviceNV, [ :pointer, :pointer ], :bool ],
              [:wglQueryVideoCaptureDeviceNV, [ :pointer, :pointer, :int, :pointer ], :bool ],
              [:wglReleaseVideoCaptureDeviceNV, [ :pointer, :pointer ], :bool ]
  end
end