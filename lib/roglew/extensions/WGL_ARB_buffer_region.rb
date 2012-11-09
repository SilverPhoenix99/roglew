module Roglew
  module WGL
    BACK_COLOR_BUFFER_BIT_ARB  ||= 0x00000002
    DEPTH_BUFFER_BIT_ARB       ||= 0x00000004
    FRONT_COLOR_BUFFER_BIT_ARB ||= 0x00000001
    STENCIL_BUFFER_BIT_ARB     ||= 0x00000008
  end
end

module WGL_ARB_buffer_region
  module RenderContext
    include Roglew::GLExtension

    functions [:wglCreateBufferRegionARB, [ :pointer, :int, :uint ], :pointer ],
              [:wglDeleteBufferRegionARB, [ :pointer ], :void ],
              [:wglRestoreBufferRegionARB, [ :pointer, :int, :int, :int, :int, :int, :int ], :bool ],
              [:wglSaveBufferRegionARB, [ :pointer, :int, :int, :int, :int ], :bool ]
  end
end