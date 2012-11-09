module Roglew
  module GL
    ALREADY_SIGNALED           ||= 0x911A
    CONDITION_SATISFIED        ||= 0x911C
    MAX_SERVER_WAIT_TIMEOUT    ||= 0x9111
    OBJECT_TYPE                ||= 0x9112
    SIGNALED                   ||= 0x9119
    SYNC_CONDITION             ||= 0x9113
    SYNC_FENCE                 ||= 0x9116
    SYNC_FLAGS                 ||= 0x9115
    SYNC_FLUSH_COMMANDS_BIT    ||= 0x00000001
    SYNC_GPU_COMMANDS_COMPLETE ||= 0x9117
    SYNC_STATUS                ||= 0x9114
    TIMEOUT_EXPIRED            ||= 0x911B
    TIMEOUT_IGNORED            ||= 0xFFFFFFFFFFFFFFFF
    UNSIGNALED                 ||= 0x9118
    WAIT_FAILED                ||= 0x911D
  end
end

module GL_ARB_sync
  module RenderContext
    include Roglew::GLExtension

    functions [:glClientWaitSync, [ :pointer, :uint, :uint64 ], :uint],
              [:glDeleteSync, [ :pointer ], :void],
              [:glFenceSync, [ :uint, :uint ], :pointer],
              [:glGetInteger64v, [ :uint, :pointer ], :void],
              [:glGetSynciv, [ :pointer, :uint, :int, :pointer, :pointer ], :void],
              [:glIsSync, [ :pointer ], :uchar],
              [:glWaitSync, [ :pointer, :uint, :uint64 ], :void]
  end
end

