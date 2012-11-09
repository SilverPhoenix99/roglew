module Roglew
  module WGL
    STEREO_EMITTER_DISABLE_3DL ||= 0x2056
    STEREO_EMITTER_ENABLE_3DL  ||= 0x2055
    STEREO_POLARITY_INVERT_3DL ||= 0x2058
    STEREO_POLARITY_NORMAL_3DL ||= 0x2057
  end
end

module WGL_3DL_stereo_control
  module RenderContext
    include Roglew::GLExtension

    functions [:wglSetStereoEmitterState3DL, [ :pointer, :uint ], :bool ]
  end
end