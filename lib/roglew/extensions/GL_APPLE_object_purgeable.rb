module Roglew
  module GL
    BUFFER_OBJECT_APPLE = 0x85B3 unless const_defined? :BUFFER_OBJECT_APPLE
    PURGEABLE_APPLE     = 0x8A1D unless const_defined? :PURGEABLE_APPLE
    RELEASED_APPLE      = 0x8A19 unless const_defined? :RELEASED_APPLE
    RETAINED_APPLE      = 0x8A1B unless const_defined? :RETAINED_APPLE
    UNDEFINED_APPLE     = 0x8A1C unless const_defined? :UNDEFINED_APPLE
    VOLATILE_APPLE      = 0x8A1A unless const_defined? :VOLATILE_APPLE
  end
end

module GL_APPLE_object_purgeable
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetObjectParameterivAPPLE, [ :uint, :uint, :uint, :pointer ], :void],
              [:glObjectPurgeableAPPLE, [ :uint, :uint, :uint ], :uint],
              [:glObjectUnpurgeableAPPLE, [ :uint, :uint, :uint ], :uint]
  end
end