module Roglew
  module GL
    BUFFER_OBJECT_APPLE ||= 0x85B3
    PURGEABLE_APPLE     ||= 0x8A1D
    RELEASED_APPLE      ||= 0x8A19
    RETAINED_APPLE      ||= 0x8A1B
    UNDEFINED_APPLE     ||= 0x8A1C
    VOLATILE_APPLE      ||= 0x8A1A
  end
end

module GL_APPLE_object_purgeable
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glGetObjectParameterivAPPLE, [ :uint, :uint, :uint, :pointer ], :void],
        [:glObjectPurgeableAPPLE, [ :uint, :uint, :uint ], :uint],
        [:glObjectUnpurgeableAPPLE, [ :uint, :uint, :uint ], :uint]
    ]
  end
end