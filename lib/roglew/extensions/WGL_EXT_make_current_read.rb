module Roglew
  module WGL
    ERROR_INVALID_PIXEL_TYPE_EXT ||= 0x2043
  end
end

module WGL_EXT_make_current_read
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetCurrentReadDCEXT, [ ], :pointer ],
              [:wglMakeContextCurrentEXT, [ :pointer, :pointer, :pointer ], :bool ]
  end
end