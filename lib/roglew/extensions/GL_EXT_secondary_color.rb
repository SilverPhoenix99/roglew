module Roglew
  module GL
    COLOR_SUM_EXT                     ||= 0x8458
    CURRENT_SECONDARY_COLOR_EXT       ||= 0x8459
    SECONDARY_COLOR_ARRAY_EXT         ||= 0x845E
    SECONDARY_COLOR_ARRAY_POINTER_EXT ||= 0x845D
    SECONDARY_COLOR_ARRAY_SIZE_EXT    ||= 0x845A
    SECONDARY_COLOR_ARRAY_STRIDE_EXT  ||= 0x845C
    SECONDARY_COLOR_ARRAY_TYPE_EXT    ||= 0x845B
  end
end

module GL_EXT_secondary_color
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glSecondaryColor3bEXT, [ :char, :char, :char ], :void],
        [:glSecondaryColor3bvEXT, [ :pointer ], :void],
        [:glSecondaryColor3dEXT, [ :double, :double, :double ], :void],
        [:glSecondaryColor3dvEXT, [ :pointer ], :void],
        [:glSecondaryColor3fEXT, [ :float, :float, :float ], :void],
        [:glSecondaryColor3fvEXT, [ :pointer ], :void],
        [:glSecondaryColor3iEXT, [ :int, :int, :int ], :void],
        [:glSecondaryColor3ivEXT, [ :pointer ], :void],
        [:glSecondaryColor3sEXT, [ :short, :short, :short ], :void],
        [:glSecondaryColor3svEXT, [ :pointer ], :void],
        [:glSecondaryColor3ubEXT, [ :uchar, :uchar, :uchar ], :void],
        [:glSecondaryColor3ubvEXT, [ :pointer ], :void],
        [:glSecondaryColor3uiEXT, [ :uint, :uint, :uint ], :void],
        [:glSecondaryColor3uivEXT, [ :pointer ], :void],
        [:glSecondaryColor3usEXT, [ :ushort, :ushort, :ushort ], :void],
        [:glSecondaryColor3usvEXT, [ :pointer ], :void],
        [:glSecondaryColorPointerEXT, [ :int, :uint, :int, :pointer ], :void]
    ]
  end
end

