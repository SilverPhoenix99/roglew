module WGL_NV_swap_group
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBindSwapBarrierNV, [ :uint, :uint ], :bool ],
              [:wglJoinSwapGroupNV, [ :pointer, :uint ], :bool ],
              [:wglQueryFrameCountNV, [ :pointer, :pointer ], :bool ],
              [:wglQueryMaxSwapGroupsNV, [ :pointer, :pointer, :pointer ], :bool ],
              [:wglQuerySwapGroupNV, [ :pointer, :pointer, :pointer ], :bool ],
              [:wglResetFrameCountNV, [ :pointer ], :bool ]
  end
end