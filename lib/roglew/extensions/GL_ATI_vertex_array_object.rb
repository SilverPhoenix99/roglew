module Roglew
  module GL
    ARRAY_OBJECT_BUFFER_ATI ||= 0x8766
    ARRAY_OBJECT_OFFSET_ATI ||= 0x8767
    DISCARD_ATI             ||= 0x8763
    DYNAMIC_ATI             ||= 0x8761
    OBJECT_BUFFER_SIZE_ATI  ||= 0x8764
    OBJECT_BUFFER_USAGE_ATI ||= 0x8765
    PRESERVE_ATI            ||= 0x8762
    STATIC_ATI              ||= 0x8760
  end
end

module GL_ATI_vertex_array_object
  module RenderContext
    include Roglew::GLExtension

    functions [:glArrayObjectATI, [ :uint, :int, :uint, :int, :uint, :uint ], :void],
              [:glFreeObjectBufferATI, [ :uint ], :void],
              [:glGetArrayObjectfvATI, [ :uint, :uint, :pointer ], :void],
              [:glGetArrayObjectivATI, [ :uint, :uint, :pointer ], :void],
              [:glGetObjectBufferfvATI, [ :uint, :uint, :pointer ], :void],
              [:glGetObjectBufferivATI, [ :uint, :uint, :pointer ], :void],
              [:glGetVariantArrayObjectfvATI, [ :uint, :uint, :pointer ], :void],
              [:glGetVariantArrayObjectivATI, [ :uint, :uint, :pointer ], :void],
              [:glIsObjectBufferATI, [ :uint ], :uchar],
              [:glNewObjectBufferATI, [ :int, :pointer, :uint ], :uint],
              [:glUpdateObjectBufferATI, [ :uint, :uint, :int, :pointer, :uint ], :void],
              [:glVariantArrayObjectATI, [ :uint, :uint, :int, :uint, :uint ], :void]
  end
end

