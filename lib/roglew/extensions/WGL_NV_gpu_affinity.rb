module Roglew
  module WGL
    ERROR_INCOMPATIBLE_AFFINITY_MASKS_NV ||= 0x20D0
    ERROR_MISSING_AFFINITY_MASK_NV       ||= 0x20D1

    class GPU_DEVICE < FFI::Struct
      layout :cb,              :uint,
             :DeviceName,      [:char, 32],
             :DeviceString,    [:char, 128],
             :Flags,           :uint,
             :rcVirtualScreen, RECT.by_value
    end
  end
end

module WGL_NV_gpu_affinity
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglCreateAffinityDCNV, [ :pointer ], :pointer ],
      [:wglDeleteDCNV, [ :pointer ],  ],
      [:wglEnumGpuDevicesNV, [ :pointer, :uint, Roglew::GL::GPU_DEVICE.ptr ], :bool ],
      [:wglEnumGpusFromAffinityDCNV, [ :pointer, :uint, :pointer ], :bool ],
      [:wglEnumGpusNV, [ :uint, :pointer ], :bool ]
    ]
  end
end