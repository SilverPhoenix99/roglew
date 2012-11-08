module Roglew
  module GL
    MAX_VERTEX_ATTRIB_BINDINGS        = 0x82DA unless const_defined? :MAX_VERTEX_ATTRIB_BINDINGS
    MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9 unless const_defined? :MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
    VERTEX_ATTRIB_BINDING             = 0x82D4 unless const_defined? :VERTEX_ATTRIB_BINDING
    VERTEX_ATTRIB_RELATIVE_OFFSET     = 0x82D5 unless const_defined? :VERTEX_ATTRIB_RELATIVE_OFFSET
    VERTEX_BINDING_DIVISOR            = 0x82D6 unless const_defined? :VERTEX_BINDING_DIVISOR
    VERTEX_BINDING_OFFSET             = 0x82D7 unless const_defined? :VERTEX_BINDING_OFFSET
    VERTEX_BINDING_STRIDE             = 0x82D8 unless const_defined? :VERTEX_BINDING_STRIDE
  end
end

module GL_ARB_vertex_attrib_binding
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindVertexBuffer, [ :uint, :uint, :int64, :int ], :void],
              [:glVertexAttribBinding, [ :uint, :uint ], :void],
              [:glVertexAttribFormat, [ :uint, :int, :uint, :uchar, :uint ], :void],
              [:glVertexAttribIFormat, [ :uint, :int, :uint, :uint ], :void],
              [:glVertexAttribLFormat, [ :uint, :int, :uint, :uint ], :void],
              [:glVertexBindingDivisor, [ :uint, :uint ], :void]
  end
end

