module Roglew
  module GL
    SURFACE_MAPPED_NV     = 0x8700
    SURFACE_REGISTERED_NV = 0x86FD
    SURFACE_STATE_NV      = 0x86EB
    WRITE_DISCARD_NV      = 0x88BE
  end
end

module GL_NV_vdpau_interop
  module RenderContext
    include Roglew::GLExtension

    functions [:glVDPAUFiniNV, [  ], :void],
              [:glVDPAUGetSurfaceivNV, [ :int64, :uint, :int, :pointer, :pointer ], :void],
              [:glVDPAUInitNV, [ :pointer, :pointer ], :void],
              [:glVDPAUIsSurfaceNV, [ :int64 ], :void],
              [:glVDPAUMapSurfacesNV, [ :int, :pointer ], :void],
              [:glVDPAURegisterOutputSurfaceNV, [ :pointer, :uint, :int, :pointer ], :int64],
              [:glVDPAURegisterVideoSurfaceNV, [ :pointer, :uint, :int, :pointer ], :int64],
              [:glVDPAUSurfaceAccessNV, [ :int64, :uint ], :void],
              [:glVDPAUUnmapSurfacesNV, [ :int, :pointer ], :void],
              [:glVDPAUUnregisterSurfaceNV, [ :int64 ], :void]
  end
end

