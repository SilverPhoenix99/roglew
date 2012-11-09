module Roglew
  module GL
    COLOR_ARRAY_ADDRESS_NV           ||= 0x8F23
    COLOR_ARRAY_LENGTH_NV            ||= 0x8F2D
    DRAW_INDIRECT_ADDRESS_NV         ||= 0x8F41
    DRAW_INDIRECT_LENGTH_NV          ||= 0x8F42
    DRAW_INDIRECT_UNIFIED_NV         ||= 0x8F40
    EDGE_FLAG_ARRAY_ADDRESS_NV       ||= 0x8F26
    EDGE_FLAG_ARRAY_LENGTH_NV        ||= 0x8F30
    ELEMENT_ARRAY_ADDRESS_NV         ||= 0x8F29
    ELEMENT_ARRAY_LENGTH_NV          ||= 0x8F33
    ELEMENT_ARRAY_UNIFIED_NV         ||= 0x8F1F
    FOG_COORD_ARRAY_ADDRESS_NV       ||= 0x8F28
    FOG_COORD_ARRAY_LENGTH_NV        ||= 0x8F32
    INDEX_ARRAY_ADDRESS_NV           ||= 0x8F24
    INDEX_ARRAY_LENGTH_NV            ||= 0x8F2E
    NORMAL_ARRAY_ADDRESS_NV          ||= 0x8F22
    NORMAL_ARRAY_LENGTH_NV           ||= 0x8F2C
    SECONDARY_COLOR_ARRAY_ADDRESS_NV ||= 0x8F27
    SECONDARY_COLOR_ARRAY_LENGTH_NV  ||= 0x8F31
    TEXTURE_COORD_ARRAY_ADDRESS_NV   ||= 0x8F25
    TEXTURE_COORD_ARRAY_LENGTH_NV    ||= 0x8F2F
    VERTEX_ARRAY_ADDRESS_NV          ||= 0x8F21
    VERTEX_ARRAY_LENGTH_NV           ||= 0x8F2B
    VERTEX_ATTRIB_ARRAY_ADDRESS_NV   ||= 0x8F20
    VERTEX_ATTRIB_ARRAY_LENGTH_NV    ||= 0x8F2A
    VERTEX_ATTRIB_ARRAY_UNIFIED_NV   ||= 0x8F1E
  end
end

module GL_NV_vertex_buffer_unified_memory
  module RenderContext
    include Roglew::GLExtension

    functions [:glBufferAddressRangeNV, [ :uint, :uint, :uint64, :int64 ], :void],
              [:glColorFormatNV, [ :int, :uint, :int ], :void],
              [:glEdgeFlagFormatNV, [ :int ], :void],
              [:glFogCoordFormatNV, [ :uint, :int ], :void],
              [:glGetIntegerui64i_vNV, [ :uint, :uint, :int64 ], :void],
              [:glIndexFormatNV, [ :uint, :int ], :void],
              [:glNormalFormatNV, [ :uint, :int ], :void],
              [:glSecondaryColorFormatNV, [ :int, :uint, :int ], :void],
              [:glTexCoordFormatNV, [ :int, :uint, :int ], :void],
              [:glVertexAttribFormatNV, [ :uint, :int, :uint, :uchar, :int ], :void],
              [:glVertexAttribIFormatNV, [ :uint, :int, :uint, :int ], :void],
              [:glVertexFormatNV, [ :int, :uint, :int ], :void]
  end
end

