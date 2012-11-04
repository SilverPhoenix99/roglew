module WGL_I3D_swap_frame_usage
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBeginFrameTrackingI3D, [ ], :bool ],
              [:wglEndFrameTrackingI3D, [ ], :bool ],
              [:wglGetFrameUsageI3D, [ :pointer ], :bool ],
              [:wglQueryFrameTrackingI3D, [ :pointer, :pointer, :pointer ], :bool ]
  end
end