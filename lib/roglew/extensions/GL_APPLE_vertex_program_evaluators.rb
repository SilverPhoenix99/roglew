module Roglew
  module GL
    VERTEX_ATTRIB_MAP1_APPLE        = 0x8A00 unless const_defined? :VERTEX_ATTRIB_MAP1_APPLE
    VERTEX_ATTRIB_MAP1_COEFF_APPLE  = 0x8A03 unless const_defined? :VERTEX_ATTRIB_MAP1_COEFF_APPLE
    VERTEX_ATTRIB_MAP1_DOMAIN_APPLE = 0x8A05 unless const_defined? :VERTEX_ATTRIB_MAP1_DOMAIN_APPLE
    VERTEX_ATTRIB_MAP1_ORDER_APPLE  = 0x8A04 unless const_defined? :VERTEX_ATTRIB_MAP1_ORDER_APPLE
    VERTEX_ATTRIB_MAP1_SIZE_APPLE   = 0x8A02 unless const_defined? :VERTEX_ATTRIB_MAP1_SIZE_APPLE
    VERTEX_ATTRIB_MAP2_APPLE        = 0x8A01 unless const_defined? :VERTEX_ATTRIB_MAP2_APPLE
    VERTEX_ATTRIB_MAP2_COEFF_APPLE  = 0x8A07 unless const_defined? :VERTEX_ATTRIB_MAP2_COEFF_APPLE
    VERTEX_ATTRIB_MAP2_DOMAIN_APPLE = 0x8A09 unless const_defined? :VERTEX_ATTRIB_MAP2_DOMAIN_APPLE
    VERTEX_ATTRIB_MAP2_ORDER_APPLE  = 0x8A08 unless const_defined? :VERTEX_ATTRIB_MAP2_ORDER_APPLE
    VERTEX_ATTRIB_MAP2_SIZE_APPLE   = 0x8A06 unless const_defined? :VERTEX_ATTRIB_MAP2_SIZE_APPLE
  end
end

module GL_APPLE_vertex_program_evaluators
  module RenderContext
    include Roglew::GLExtension

    functions [:glDisableVertexAttribAPPLE, [ :uint, :uint ], :void],
              [:glEnableVertexAttribAPPLE, [ :uint, :uint ], :void],
              [:glIsVertexAttribEnabledAPPLE, [ :uint, :uint ], :uchar],
              [:glMapVertexAttrib1dAPPLE, [ :uint, :uint, :double, :double, :int, :int, :pointer ], :void],
              [:glMapVertexAttrib1fAPPLE, [ :uint, :uint, :float, :float, :int, :int, :pointer ], :void],
              [:glMapVertexAttrib2dAPPLE, [ :uint, :uint, :double, :double, :int, :int, :double, :double, :int, :int, :pointer ], :void],
              [:glMapVertexAttrib2fAPPLE, [ :uint, :uint, :float, :float, :int, :int, :float, :float, :int, :int, :pointer ], :void]
  end
end