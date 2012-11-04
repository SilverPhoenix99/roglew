module Roglew
  module WGL
    DIGITAL_VIDEO_CURSOR_ALPHA_FRAMEBUFFER_I3D = 0x2050
    DIGITAL_VIDEO_CURSOR_ALPHA_VALUE_I3D       = 0x2051
    DIGITAL_VIDEO_CURSOR_INCLUDED_I3D          = 0x2052
    DIGITAL_VIDEO_GAMMA_CORRECTED_I3D          = 0x2053
  end
end

module WGL_I3D_digital_video_control
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetDigitalVideoParametersI3D, [ :pointer, :int, :pointer ], :bool ],
              [:wglSetDigitalVideoParametersI3D, [ :pointer, :int, :pointer ], :bool ]
  end
end