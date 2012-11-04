module Roglew
  module GL
    DOUBLE_MAT2_EXT   = 0x8F46
    DOUBLE_MAT2x3_EXT = 0x8F49
    DOUBLE_MAT2x4_EXT = 0x8F4A
    DOUBLE_MAT3_EXT   = 0x8F47
    DOUBLE_MAT3x2_EXT = 0x8F4B
    DOUBLE_MAT3x4_EXT = 0x8F4C
    DOUBLE_MAT4_EXT   = 0x8F48
    DOUBLE_MAT4x2_EXT = 0x8F4D
    DOUBLE_MAT4x3_EXT = 0x8F4E
    DOUBLE_VEC2_EXT   = 0x8FFC
    DOUBLE_VEC3_EXT   = 0x8FFD
    DOUBLE_VEC4_EXT   = 0x8FFE
  end
end

module GL_EXT_vertex_attrib_64bit
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetVertexAttribLdvEXT, [ :uint, :uint, :pointer ], :void],
              [:glVertexArrayVertexAttribLOffsetEXT, [ :uint, :uint, :uint, :int, :uint, :int, :int64 ], :void],
              [:glVertexAttribL1dEXT, [ :uint, :double ], :void],
              [:glVertexAttribL1dvEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribL2dEXT, [ :uint, :double, :double ], :void],
              [:glVertexAttribL2dvEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribL3dEXT, [ :uint, :double, :double, :double ], :void],
              [:glVertexAttribL3dvEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribL4dEXT, [ :uint, :double, :double, :double, :double ], :void],
              [:glVertexAttribL4dvEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribLPointerEXT, [ :uint, :int, :uint, :int, :pointer ], :void]
  end
end

