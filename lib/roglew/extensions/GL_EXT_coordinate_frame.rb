module Roglew
  module GL
    BINORMAL_ARRAY_EXT         ||= 0x843A
    BINORMAL_ARRAY_POINTER_EXT ||= 0x8443
    BINORMAL_ARRAY_STRIDE_EXT  ||= 0x8441
    BINORMAL_ARRAY_TYPE_EXT    ||= 0x8440
    CURRENT_BINORMAL_EXT       ||= 0x843C
    CURRENT_TANGENT_EXT        ||= 0x843B
    MAP1_BINORMAL_EXT          ||= 0x8446
    MAP1_TANGENT_EXT           ||= 0x8444
    MAP2_BINORMAL_EXT          ||= 0x8447
    MAP2_TANGENT_EXT           ||= 0x8445
    TANGENT_ARRAY_EXT          ||= 0x8439
    TANGENT_ARRAY_POINTER_EXT  ||= 0x8442
    TANGENT_ARRAY_STRIDE_EXT   ||= 0x843F
    TANGENT_ARRAY_TYPE_EXT     ||= 0x843E
  end
end

module GL_EXT_coordinate_frame
  module RenderContext
    include Roglew::GLExtension

    functions [:glBinormalPointerEXT, [ :uint, :int, :pointer ], :void],
              [:glTangentPointerEXT, [ :uint, :int, :pointer ], :void]
  end
end

