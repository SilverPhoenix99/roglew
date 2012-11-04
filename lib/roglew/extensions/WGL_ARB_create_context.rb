module Roglew
  module WGL
    CONTEXT_DEBUG_BIT_ARB              = 0x0001
    CONTEXT_FLAGS_ARB                  = 0x2094
    CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = 0x0002
    CONTEXT_LAYER_PLANE_ARB            = 0x2093
    CONTEXT_MAJOR_VERSION_ARB          = 0x2091
    CONTEXT_MINOR_VERSION_ARB          = 0x2092
    ERROR_INVALID_PROFILE_ARB          = 0x2096
    ERROR_INVALID_VERSION_ARB          = 0x2095
  end
end

module WGL_ARB_create_context
  module RenderContext
    include Roglew::GLExtension

    functions [:wglCreateContextAttribsARB, [ :pointer, :pointer, :pointer ], :pointer ]
  end
end