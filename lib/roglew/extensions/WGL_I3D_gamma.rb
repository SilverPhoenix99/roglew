module Roglew
  module WGL
    GAMMA_EXCLUDE_DESKTOP_I3D ||= 0x204F
    GAMMA_TABLE_SIZE_I3D      ||= 0x204E
  end
end

module WGL_I3D_gamma
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetGammaTableI3D, [ :pointer, :int, :pointer, :pointer, :pointer ], :bool ],
              [:wglGetGammaTableParametersI3D, [ :pointer, :int, :pointer ], :bool ],
              [:wglSetGammaTableI3D, [ :pointer, :int, :pointer, :pointer, :pointer ], :bool ],
              [:wglSetGammaTableParametersI3D, [ :pointer, :int, :pointer ], :bool ]
  end
end