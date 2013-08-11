module WGL_I3D_swap_frame_lock
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglDisableFrameLockI3D, [ ], :bool ],
      [:wglEnableFrameLockI3D, [ ], :bool ],
      [:wglIsEnabledFrameLockI3D, [ :pointer ], :bool ],
      [:wglQueryFrameLockMasterI3D, [ :pointer ], :bool ]
    ]
  end
end