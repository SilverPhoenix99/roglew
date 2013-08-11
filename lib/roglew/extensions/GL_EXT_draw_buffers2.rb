module GL_EXT_draw_buffers2
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glColorMaskIndexedEXT, [ :uint, :uchar, :uchar, :uchar, :uchar ], :void],
        [:glDisableIndexedEXT, [ :uint, :uint ], :void],
        [:glEnableIndexedEXT, [ :uint, :uint ], :void],
        [:glGetBooleanIndexedvEXT, [ :uint, :uint, :pointer ], :void],
        [:glGetIntegerIndexedvEXT, [ :uint, :uint, :pointer ], :void],
        [:glIsEnabledIndexedEXT, [ :uint, :uint ], :uchar]
    ]
  end
end