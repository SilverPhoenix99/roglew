module Roglew
  module GL
    DEBUG_CATEGORY_API_ERROR_AMD          = 0x9149 unless const_defined? :DEBUG_CATEGORY_API_ERROR_AMD
    DEBUG_CATEGORY_APPLICATION_AMD        = 0x914F unless const_defined? :DEBUG_CATEGORY_APPLICATION_AMD
    DEBUG_CATEGORY_DEPRECATION_AMD        = 0x914B unless const_defined? :DEBUG_CATEGORY_DEPRECATION_AMD
    DEBUG_CATEGORY_OTHER_AMD              = 0x9150 unless const_defined? :DEBUG_CATEGORY_OTHER_AMD
    DEBUG_CATEGORY_PERFORMANCE_AMD        = 0x914D unless const_defined? :DEBUG_CATEGORY_PERFORMANCE_AMD
    DEBUG_CATEGORY_SHADER_COMPILER_AMD    = 0x914E unless const_defined? :DEBUG_CATEGORY_SHADER_COMPILER_AMD
    DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 0x914C unless const_defined? :DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
    DEBUG_CATEGORY_WINDOW_SYSTEM_AMD      = 0x914A unless const_defined? :DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
    DEBUG_LOGGED_MESSAGES_AMD             = 0x9145 unless const_defined? :DEBUG_LOGGED_MESSAGES_AMD
    DEBUG_SEVERITY_HIGH_AMD               = 0x9146 unless const_defined? :DEBUG_SEVERITY_HIGH_AMD
    DEBUG_SEVERITY_LOW_AMD                = 0x9148 unless const_defined? :DEBUG_SEVERITY_LOW_AMD
    DEBUG_SEVERITY_MEDIUM_AMD             = 0x9147 unless const_defined? :DEBUG_SEVERITY_MEDIUM_AMD
    MAX_DEBUG_LOGGED_MESSAGES_AMD         = 0x9144 unless const_defined? :MAX_DEBUG_LOGGED_MESSAGES_AMD
    MAX_DEBUG_MESSAGE_LENGTH_AMD          = 0x9143 unless const_defined? :MAX_DEBUG_MESSAGE_LENGTH_AMD

    GLDEBUGPROCAMD = callback :GLDEBUGPROCAMD, [ :uint, :uint, :uint, :int, :string, :pointer ], :void
  end
end

module GL_AMD_debug_output
  module RenderContext
    include Roglew::GLExtension

    functions [:glDebugMessageCallbackAMD, [ Roglew::GL::GLDEBUGPROCAMD, :pointer ], :void],
              [:glDebugMessageEnableAMD, [ :uint, :uint, :int, :pointer, :uchar ], :void],
              [:glDebugMessageInsertAMD, [ :uint, :uint, :uint, :int, :string ], :void],
              [:glGetDebugMessageLogAMD, [ :uint, :int, :pointer, :pointer, :pointer, :pointer, :string ], :uint]
  end
end