module Roglew
  module GL
    BINORMAL_ARRAY_EXT         = 0x843A unless const_defined? :BINORMAL_ARRAY_EXT
    BINORMAL_ARRAY_POINTER_EXT = 0x8443 unless const_defined? :BINORMAL_ARRAY_POINTER_EXT
    BINORMAL_ARRAY_STRIDE_EXT  = 0x8441 unless const_defined? :BINORMAL_ARRAY_STRIDE_EXT
    BINORMAL_ARRAY_TYPE_EXT    = 0x8440 unless const_defined? :BINORMAL_ARRAY_TYPE_EXT
    CURRENT_BINORMAL_EXT       = 0x843C unless const_defined? :CURRENT_BINORMAL_EXT
    CURRENT_TANGENT_EXT        = 0x843B unless const_defined? :CURRENT_TANGENT_EXT
    MAP1_BINORMAL_EXT          = 0x8446 unless const_defined? :MAP1_BINORMAL_EXT
    MAP1_TANGENT_EXT           = 0x8444 unless const_defined? :MAP1_TANGENT_EXT
    MAP2_BINORMAL_EXT          = 0x8447 unless const_defined? :MAP2_BINORMAL_EXT
    MAP2_TANGENT_EXT           = 0x8445 unless const_defined? :MAP2_TANGENT_EXT
    TANGENT_ARRAY_EXT          = 0x8439 unless const_defined? :TANGENT_ARRAY_EXT
    TANGENT_ARRAY_POINTER_EXT  = 0x8442 unless const_defined? :TANGENT_ARRAY_POINTER_EXT
    TANGENT_ARRAY_STRIDE_EXT   = 0x843F unless const_defined? :TANGENT_ARRAY_STRIDE_EXT
    TANGENT_ARRAY_TYPE_EXT     = 0x843E unless const_defined? :TANGENT_ARRAY_TYPE_EXT
  end
end

module GL_EXT_coordinate_frame
  module RenderContext
    include Roglew::GLExtension

    functions [:glBinormalPointerEXT, [ :uint, :int, :pointer ], :void],
              [:glTangentPointerEXT, [ :uint, :int, :pointer ], :void]
  end
end

