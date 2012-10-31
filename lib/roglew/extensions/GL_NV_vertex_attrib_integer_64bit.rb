module Roglew
  module GL
    INT64_NV          = 0x140E
    UNSIGNED_INT64_NV = 0x140F
  end
end

module GL_NV_vertex_attrib_integer_64bit
  module RenderContext
    include GLExtension

    functions [:glGetVertexAttribLi64vNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVertexAttribLui64vNV, [ :uint, :uint, :pointer ], :void],
              [:glVertexAttribL1i64NV, [ :uint, :int64 ], :void],
              [:glVertexAttribL1i64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribL1ui64NV, [ :uint, :uint64 ], :void],
              [:glVertexAttribL1ui64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribL2i64NV, [ :uint, :int64, :int64 ], :void],
              [:glVertexAttribL2i64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribL2ui64NV, [ :uint, :uint64, :uint64 ], :void],
              [:glVertexAttribL2ui64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribL3i64NV, [ :uint, :int64, :int64, :int64 ], :void],
              [:glVertexAttribL3i64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribL3ui64NV, [ :uint, :uint64, :uint64, :uint64 ], :void],
              [:glVertexAttribL3ui64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribL4i64NV, [ :uint, :int64, :int64, :int64, :int64 ], :void],
              [:glVertexAttribL4i64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribL4ui64NV, [ :uint, :uint64, :uint64, :uint64, :uint64 ], :void],
              [:glVertexAttribL4ui64vNV, [ :uint, :pointer ], :void],
              [:glVertexAttribLFormatNV, [ :uint, :int, :uint, :int ], :void]
  end
end

