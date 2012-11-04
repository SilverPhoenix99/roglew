module Roglew
  module GL
    DEBUG_CATEGORY_API_ERROR_AMD          = 0x9149
    DEBUG_CATEGORY_APPLICATION_AMD        = 0x914F
    DEBUG_CATEGORY_DEPRECATION_AMD        = 0x914B
    DEBUG_CATEGORY_OTHER_AMD              = 0x9150
    DEBUG_CATEGORY_PERFORMANCE_AMD        = 0x914D
    DEBUG_CATEGORY_SHADER_COMPILER_AMD    = 0x914E
    DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 0x914C
    DEBUG_CATEGORY_WINDOW_SYSTEM_AMD      = 0x914A
    DEBUG_LOGGED_MESSAGES_AMD             = 0x9145
    DEBUG_SEVERITY_HIGH_AMD               = 0x9146
    DEBUG_SEVERITY_LOW_AMD                = 0x9148
    DEBUG_SEVERITY_MEDIUM_AMD             = 0x9147
    MAX_DEBUG_LOGGED_MESSAGES_AMD         = 0x9144
    MAX_DEBUG_MESSAGE_LENGTH_AMD          = 0x9143
  end
end

module GL_AMD_debug_output
  include Roglew::GL::Native

  GLDEBUGPROCAMD = callback :GLDEBUGPROCAMD, [ :uint, :uint, :uint, :int, :string, :pointer ], :void

  module RenderContext
    include Roglew::GLExtension

    functions [:glDebugMessageCallbackAMD, [ GLDEBUGPROCAMD, :pointer ], :void],
              [:glDebugMessageEnableAMD, [ :uint, :uint, :int, :pointer, :uchar ], :void],
              [:glDebugMessageInsertAMD, [ :uint, :uint, :uint, :int, :string ], :void],
              [:glGetDebugMessageLogAMD, [ :uint, :int, :pointer, :pointer, :pointer, :pointer, :string ], :uint]
  end
end