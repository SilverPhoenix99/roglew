module Roglew
  module GL
    DOUBLE_MAT2 ||= 0x8F46
    DOUBLE_MAT3 ||= 0x8F47
    DOUBLE_MAT4 ||= 0x8F48
    DOUBLE_VEC2 ||= 0x8FFC
    DOUBLE_VEC3 ||= 0x8FFD
    DOUBLE_VEC4 ||= 0x8FFE
  end
end

module GL_ARB_vertex_attrib_64bit
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetVertexAttribLdv, [ :uint, :uint, :pointer ], :void],
              [:glVertexAttribL1d, [ :uint, :double ], :void],
              [:glVertexAttribL1dv, [ :uint, :pointer ], :void],
              [:glVertexAttribL2d, [ :uint, :double, :double ], :void],
              [:glVertexAttribL2dv, [ :uint, :pointer ], :void],
              [:glVertexAttribL3d, [ :uint, :double, :double, :double ], :void],
              [:glVertexAttribL3dv, [ :uint, :pointer ], :void],
              [:glVertexAttribL4d, [ :uint, :double, :double, :double, :double ], :void],
              [:glVertexAttribL4dv, [ :uint, :pointer ], :void],
              [:glVertexAttribLPointer, [ :uint, :int, :uint, :int, :pointer ], :void]
  end
end

