module Roglew
  module GL
    R1UI_C3F_V3F_SUN                   ||= 0x85C6
    R1UI_C4F_N3F_V3F_SUN               ||= 0x85C8
    R1UI_C4UB_V3F_SUN                  ||= 0x85C5
    R1UI_N3F_V3F_SUN                   ||= 0x85C7
    R1UI_T2F_C4F_N3F_V3F_SUN           ||= 0x85CB
    R1UI_T2F_N3F_V3F_SUN               ||= 0x85CA
    R1UI_T2F_V3F_SUN                   ||= 0x85C9
    R1UI_V3F_SUN                       ||= 0x85C4
    REPLACE_MIDDLE_SUN                 ||= 0x02
    REPLACE_OLDEST_SUN                 ||= 0x03
    REPLACEMENT_CODE_ARRAY_POINTER_SUN ||= 0x85C3
    REPLACEMENT_CODE_ARRAY_STRIDE_SUN  ||= 0x85C2
    REPLACEMENT_CODE_ARRAY_SUN         ||= 0x85C0
    REPLACEMENT_CODE_ARRAY_TYPE_SUN    ||= 0x85C1
    REPLACEMENT_CODE_SUN               ||= 0x81D8
    RESTART_SUN                        ||= 0x01
    TRIANGLE_LIST_SUN                  ||= 0x81D7
  end
end

module GL_SUN_triangle_list
  module RenderContext
    include Roglew::GLExtension

    functions [:glReplacementCodePointerSUN, [ :uint, :int, :pointer ], :void],
              [:glReplacementCodeubSUN, [ :uchar ], :void],
              [:glReplacementCodeubvSUN, [ :pointer ], :void],
              [:glReplacementCodeuiSUN, [ :uint ], :void],
              [:glReplacementCodeuivSUN, [ :pointer ], :void],
              [:glReplacementCodeusSUN, [ :ushort ], :void],
              [:glReplacementCodeusvSUN, [ :pointer ], :void]
  end
end

