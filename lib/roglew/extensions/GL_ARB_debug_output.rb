module Roglew
  module GL
    DEBUG_CALLBACK_FUNCTION_ARB          = 0x8244 unless const_defined? :DEBUG_CALLBACK_FUNCTION_ARB
    DEBUG_CALLBACK_USER_PARAM_ARB        = 0x8245 unless const_defined? :DEBUG_CALLBACK_USER_PARAM_ARB
    DEBUG_LOGGED_MESSAGES_ARB            = 0x9145 unless const_defined? :DEBUG_LOGGED_MESSAGES_ARB
    DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = 0x8243 unless const_defined? :DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB
    DEBUG_OUTPUT_SYNCHRONOUS_ARB         = 0x8242 unless const_defined? :DEBUG_OUTPUT_SYNCHRONOUS_ARB
    DEBUG_SEVERITY_HIGH_ARB              = 0x9146 unless const_defined? :DEBUG_SEVERITY_HIGH_ARB
    DEBUG_SEVERITY_LOW_ARB               = 0x9148 unless const_defined? :DEBUG_SEVERITY_LOW_ARB
    DEBUG_SEVERITY_MEDIUM_ARB            = 0x9147 unless const_defined? :DEBUG_SEVERITY_MEDIUM_ARB
    DEBUG_SOURCE_API_ARB                 = 0x8246 unless const_defined? :DEBUG_SOURCE_API_ARB
    DEBUG_SOURCE_APPLICATION_ARB         = 0x824A unless const_defined? :DEBUG_SOURCE_APPLICATION_ARB
    DEBUG_SOURCE_OTHER_ARB               = 0x824B unless const_defined? :DEBUG_SOURCE_OTHER_ARB
    DEBUG_SOURCE_SHADER_COMPILER_ARB     = 0x8248 unless const_defined? :DEBUG_SOURCE_SHADER_COMPILER_ARB
    DEBUG_SOURCE_THIRD_PARTY_ARB         = 0x8249 unless const_defined? :DEBUG_SOURCE_THIRD_PARTY_ARB
    DEBUG_SOURCE_WINDOW_SYSTEM_ARB       = 0x8247 unless const_defined? :DEBUG_SOURCE_WINDOW_SYSTEM_ARB
    DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB   = 0x824D unless const_defined? :DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB
    DEBUG_TYPE_ERROR_ARB                 = 0x824C unless const_defined? :DEBUG_TYPE_ERROR_ARB
    DEBUG_TYPE_OTHER_ARB                 = 0x8251 unless const_defined? :DEBUG_TYPE_OTHER_ARB
    DEBUG_TYPE_PERFORMANCE_ARB           = 0x8250 unless const_defined? :DEBUG_TYPE_PERFORMANCE_ARB
    DEBUG_TYPE_PORTABILITY_ARB           = 0x824F unless const_defined? :DEBUG_TYPE_PORTABILITY_ARB
    DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB    = 0x824E unless const_defined? :DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB
    MAX_DEBUG_LOGGED_MESSAGES_ARB        = 0x9144 unless const_defined? :MAX_DEBUG_LOGGED_MESSAGES_ARB
    MAX_DEBUG_MESSAGE_LENGTH_ARB         = 0x9143 unless const_defined? :MAX_DEBUG_MESSAGE_LENGTH_ARB

    GLDEBUGPROCARB = callback :GLDEBUGPROCARB, [ :uint, :uint, :uint, :uint, :int, :string, :pointer ], :void
  end
end

module GL_ARB_debug_output
  module RenderContext
    include Roglew::GLExtension

    functions [:glDebugMessageCallbackARB, [ Roglew::GL::GLDEBUGPROCARB, :pointer ], :void],
              [:glDebugMessageControlARB, [ :uint, :uint, :uint, :int, :pointer, :uchar ], :void],
              [:glDebugMessageInsertARB, [ :uint, :uint, :uint, :uint, :int, :string ], :void],
              [:glGetDebugMessageLogARB, [ :uint, :int, :pointer, :pointer, :pointer, :pointer, :pointer, :string ], :uint]
  end
end