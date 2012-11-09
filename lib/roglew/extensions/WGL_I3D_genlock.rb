module Roglew
  module WGL
    GENLOCK_SOURCE_DIGITAL_FIELD_I3D  ||= 0x2049
    GENLOCK_SOURCE_DIGITAL_SYNC_I3D   ||= 0x2048
    GENLOCK_SOURCE_EDGE_BOTH_I3D      ||= 0x204C
    GENLOCK_SOURCE_EDGE_FALLING_I3D   ||= 0x204A
    GENLOCK_SOURCE_EDGE_RISING_I3D    ||= 0x204B
    GENLOCK_SOURCE_EXTERNAL_FIELD_I3D ||= 0x2046
    GENLOCK_SOURCE_EXTERNAL_SYNC_I3D  ||= 0x2045
    GENLOCK_SOURCE_EXTERNAL_TTL_I3D   ||= 0x2047
    GENLOCK_SOURCE_MULTIVIEW_I3D      ||= 0x2044
  end
end

module WGL_I3D_genlock
  module RenderContext
    include Roglew::GLExtension

    functions [:wglDisableGenlockI3D, [ :pointer ], :bool ],
              [:wglEnableGenlockI3D, [ :pointer ], :bool ],
              [:wglGenlockSampleRateI3D, [ :pointer, :uint ], :bool ],
              [:wglGenlockSourceDelayI3D, [ :pointer, :uint ], :bool ],
              [:wglGenlockSourceEdgeI3D, [ :pointer, :uint ], :bool ],
              [:wglGenlockSourceI3D, [ :pointer, :uint ], :bool ],
              [:wglGetGenlockSampleRateI3D, [ :pointer, :pointer ], :bool ],
              [:wglGetGenlockSourceDelayI3D, [ :pointer, :pointer ], :bool ],
              [:wglGetGenlockSourceEdgeI3D, [ :pointer, :pointer ], :bool ],
              [:wglGetGenlockSourceI3D, [ :pointer, :pointer ], :bool ],
              [:wglIsEnabledGenlockI3D, [ :pointer, :pointer ], :bool ],
              [:wglQueryGenlockMaxSourceDelayI3D, [ :pointer, :pointer, :pointer ], :bool ]
  end
end