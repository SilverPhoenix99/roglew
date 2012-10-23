module Roglew
  module GL
    MAX_VERTEX_ATTRIB_BINDINGS        = 0x82DA
    MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9
    VERTEX_ATTRIB_BINDING             = 0x82D4
    VERTEX_ATTRIB_RELATIVE_OFFSET     = 0x82D5
    VERTEX_BINDING_DIVISOR            = 0x82D6
    VERTEX_BINDING_OFFSET             = 0x82D7
    VERTEX_BINDING_STRIDE             = 0x82D8
  end
end

module GL_ARB_vertex_attrib_binding
  module RenderContext
    include GLExtension

    functions [:glBindVertexBuffer, [ :uint, :uint, :int64, :int ], :void],
              [:glVertexAttribBinding, [ :uint, :uint ], :void],
              [:glVertexAttribFormat, [ :uint, :int, :uint, :uchar, :uint ], :void],
              [:glVertexAttribIFormat, [ :uint, :int, :uint, :uint ], :void],
              [:glVertexAttribLFormat, [ :uint, :int, :uint, :uint ], :void],
              [:glVertexBindingDivisor, [ :uint, :uint ], :void]
  end
end

