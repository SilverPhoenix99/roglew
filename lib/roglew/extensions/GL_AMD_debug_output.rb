module Roglew
  module GL
    DEBUG_CATEGORY_API_ERROR_AMD          ||= 0x9149
    DEBUG_CATEGORY_APPLICATION_AMD        ||= 0x914F
    DEBUG_CATEGORY_DEPRECATION_AMD        ||= 0x914B
    DEBUG_CATEGORY_OTHER_AMD              ||= 0x9150
    DEBUG_CATEGORY_PERFORMANCE_AMD        ||= 0x914D
    DEBUG_CATEGORY_SHADER_COMPILER_AMD    ||= 0x914E
    DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD ||= 0x914C
    DEBUG_CATEGORY_WINDOW_SYSTEM_AMD      ||= 0x914A
    DEBUG_LOGGED_MESSAGES_AMD             ||= 0x9145
    DEBUG_SEVERITY_HIGH_AMD               ||= 0x9146
    DEBUG_SEVERITY_LOW_AMD                ||= 0x9148
    DEBUG_SEVERITY_MEDIUM_AMD             ||= 0x9147
    MAX_DEBUG_LOGGED_MESSAGES_AMD         ||= 0x9144
    MAX_DEBUG_MESSAGE_LENGTH_AMD          ||= 0x9143

    GLDEBUGPROCAMD = callback :GLDEBUGPROCAMD, [ :uint, :uint, :uint, :int, :string, :pointer ], :void
  end
end

module GL_AMD_debug_output
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDebugMessageCallbackAMD, [ Roglew::GL::GLDEBUGPROCAMD, :pointer ], :void],
        [:glDebugMessageEnableAMD, [ :uint, :uint, :int, :pointer, :bool ], :void],
        [:glDebugMessageInsertAMD, [ :uint, :uint, :uint, :int, :string ], :void],
        [:glGetDebugMessageLogAMD, [ :uint, :int, :pointer, :pointer, :pointer, :pointer, :string ], :uint]
    ]
  end

  module RenderContext
    include Roglew::RenderContextExtension

    checks_current
    def debug_message_enableAMD(category, severity, ids, enabled)
      pids = FFI::MemoryPointer.new(:uint, ids.count)
      pids.write_array_of_uint(ids)
      @rh.glDebugMessageEnableAMD(category, severity, ids.count, pids, enabled)
    end
  end
end