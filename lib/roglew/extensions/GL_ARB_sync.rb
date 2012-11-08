module Roglew
  module GL
    ALREADY_SIGNALED           = 0x911A unless const_defined? :ALREADY_SIGNALED
    CONDITION_SATISFIED        = 0x911C unless const_defined? :CONDITION_SATISFIED
    MAX_SERVER_WAIT_TIMEOUT    = 0x9111 unless const_defined? :MAX_SERVER_WAIT_TIMEOUT
    OBJECT_TYPE                = 0x9112 unless const_defined? :OBJECT_TYPE
    SIGNALED                   = 0x9119 unless const_defined? :SIGNALED
    SYNC_CONDITION             = 0x9113 unless const_defined? :SYNC_CONDITION
    SYNC_FENCE                 = 0x9116 unless const_defined? :SYNC_FENCE
    SYNC_FLAGS                 = 0x9115 unless const_defined? :SYNC_FLAGS
    SYNC_FLUSH_COMMANDS_BIT    = 0x00000001 unless const_defined? :SYNC_FLUSH_COMMANDS_BIT
    SYNC_GPU_COMMANDS_COMPLETE = 0x9117 unless const_defined? :SYNC_GPU_COMMANDS_COMPLETE
    SYNC_STATUS                = 0x9114 unless const_defined? :SYNC_STATUS
    TIMEOUT_EXPIRED            = 0x911B unless const_defined? :TIMEOUT_EXPIRED
    TIMEOUT_IGNORED            = 0xFFFFFFFFFFFFFFFF unless const_defined? :TIMEOUT_IGNORED
    UNSIGNALED                 = 0x9118 unless const_defined? :UNSIGNALED
    WAIT_FAILED                = 0x911D unless const_defined? :WAIT_FAILED
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

