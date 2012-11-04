module Roglew
  module WGL
    ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB = 0x2054
    ERROR_INVALID_PIXEL_TYPE_ARB           = 0x2043
  end
end

module WGL_ARB_make_current_read
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetCurrentReadDCARB, [ ], :pointer ],
              [:wglMakeContextCurrentARB, [ :pointer, :pointer, :pointer ], :bool ]
  end
end