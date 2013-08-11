module Roglew
  module WGL
    IMAGE_BUFFER_LOCK_I3D       ||= 0x00000002
    IMAGE_BUFFER_MIN_ACCESS_I3D ||= 0x00000001

  end
end

module WGL_I3D_image_buffer
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglAssociateImageBufferEventsI3D, [ :pointer, :pointer, :pointer, :pointer, :uint ], :bool ],
      [:wglCreateImageBufferI3D, [ :pointer, :uint, :uint ], :pointer ],
      [:wglDestroyImageBufferI3D, [ :pointer, :pointer ], :bool ],
      [:wglReleaseImageBufferEventsI3D, [ :pointer, :pointer, :uint ], :bool ]
    ]
  end
end