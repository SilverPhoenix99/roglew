module Roglew
  module WGL
    NUM_VIDEO_SLOTS_NV ||= 0x20F0
  end
end

module WGL_NV_present_video
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBindVideoDeviceNV, [ :pointer, :uint, :pointer, :pointer ], :bool ],
              [:wglEnumerateVideoDevicesNV, [ :pointer, :pointer ], :int ],
              [:wglQueryCurrentContextNV, [ :int, :pointer ], :bool ]
  end
end