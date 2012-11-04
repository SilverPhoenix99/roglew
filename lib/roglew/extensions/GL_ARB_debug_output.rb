module Roglew
  module GL
    DEBUG_CALLBACK_FUNCTION_ARB          = 0x8244
    DEBUG_CALLBACK_USER_PARAM_ARB        = 0x8245
    DEBUG_LOGGED_MESSAGES_ARB            = 0x9145
    DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = 0x8243
    DEBUG_OUTPUT_SYNCHRONOUS_ARB         = 0x8242
    DEBUG_SEVERITY_HIGH_ARB              = 0x9146
    DEBUG_SEVERITY_LOW_ARB               = 0x9148
    DEBUG_SEVERITY_MEDIUM_ARB            = 0x9147
    DEBUG_SOURCE_API_ARB                 = 0x8246
    DEBUG_SOURCE_APPLICATION_ARB         = 0x824A
    DEBUG_SOURCE_OTHER_ARB               = 0x824B
    DEBUG_SOURCE_SHADER_COMPILER_ARB     = 0x8248
    DEBUG_SOURCE_THIRD_PARTY_ARB         = 0x8249
    DEBUG_SOURCE_WINDOW_SYSTEM_ARB       = 0x8247
    DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB   = 0x824D
    DEBUG_TYPE_ERROR_ARB                 = 0x824C
    DEBUG_TYPE_OTHER_ARB                 = 0x8251
    DEBUG_TYPE_PERFORMANCE_ARB           = 0x8250
    DEBUG_TYPE_PORTABILITY_ARB           = 0x824F
    DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB    = 0x824E
    MAX_DEBUG_LOGGED_MESSAGES_ARB        = 0x9144
    MAX_DEBUG_MESSAGE_LENGTH_ARB         = 0x9143
  end
end

module GL_ARB_debug_output
  include Roglew::GL::Native

  GLDEBUGPROCARB = callback :GLDEBUGPROCARB, [ :uint, :uint, :uint, :uint, :int, :string, :pointer ], :void

  module RenderContext
    include Roglew::GLExtension

    functions [:glDebugMessageCallbackARB, [ GLDEBUGPROCARB, :pointer ], :void],
              [:glDebugMessageControlARB, [ :uint, :uint, :uint, :int, :pointer, :uchar ], :void],
              [:glDebugMessageInsertARB, [ :uint, :uint, :uint, :uint, :int, :string ], :void],
              [:glGetDebugMessageLogARB, [ :uint, :int, :pointer, :pointer, :pointer, :pointer, :pointer, :string ], :uint]
  end
end