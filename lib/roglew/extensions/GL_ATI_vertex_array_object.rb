module Roglew
  module GL
    ARRAY_OBJECT_BUFFER_ATI = 0x8766 unless const_defined? :ARRAY_OBJECT_BUFFER_ATI
    ARRAY_OBJECT_OFFSET_ATI = 0x8767 unless const_defined? :ARRAY_OBJECT_OFFSET_ATI
    DISCARD_ATI             = 0x8763 unless const_defined? :DISCARD_ATI
    DYNAMIC_ATI             = 0x8761 unless const_defined? :DYNAMIC_ATI
    OBJECT_BUFFER_SIZE_ATI  = 0x8764 unless const_defined? :OBJECT_BUFFER_SIZE_ATI
    OBJECT_BUFFER_USAGE_ATI = 0x8765 unless const_defined? :OBJECT_BUFFER_USAGE_ATI
    PRESERVE_ATI            = 0x8762 unless const_defined? :PRESERVE_ATI
    STATIC_ATI              = 0x8760 unless const_defined? :STATIC_ATI
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

