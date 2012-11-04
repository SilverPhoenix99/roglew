module Roglew
  module WGL
    ACCESS_READ_ONLY_NV     = 0x0000
    ACCESS_READ_WRITE_NV    = 0x0001
    ACCESS_WRITE_DISCARD_NV = 0x0002
  end
end

module WGL_NV_DX_interop
  module RenderContext
    include Roglew::GLExtension

    functions [:wglDXCloseDeviceNV, [ :pointer ], :bool ],
              [:wglDXLockObjectsNV, [ :pointer, :int, :pointer ], :bool ],
              [:wglDXObjectAccessNV, [ :pointer, :uint ], :bool ],
              [:wglDXOpenDeviceNV, [ :pointer ], :pointer ],
              [:wglDXRegisterObjectNV, [ :pointer, :pointer, :uint, :uint, :uint ], :pointer ],
              [:wglDXSetResourceShareHandleNV, [ :pointer, :pointer ], :bool ],
              [:wglDXUnlockObjectsNV, [ :pointer, :int, :pointer ], :bool ],
              [:wglDXUnregisterObjectNV, [ :pointer, :pointer ], :bool ]
  end
end