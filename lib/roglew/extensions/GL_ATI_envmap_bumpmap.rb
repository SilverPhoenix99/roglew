module Roglew
  module GL
    BUMP_ENVMAP_ATI          ||= 0x877B
    BUMP_NUM_TEX_UNITS_ATI   ||= 0x8777
    BUMP_ROT_MATRIX_ATI      ||= 0x8775
    BUMP_ROT_MATRIX_SIZE_ATI ||= 0x8776
    BUMP_TARGET_ATI          ||= 0x877C
    BUMP_TEX_UNITS_ATI       ||= 0x8778
    DU8DV8_ATI               ||= 0x877A
    DUDV_ATI                 ||= 0x8779
  end
end

module GL_ATI_envmap_bumpmap
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glGetTexBumpParameterfvATI, [ :uint, :pointer ], :void],
        [:glGetTexBumpParameterivATI, [ :uint, :pointer ], :void],
        [:glTexBumpParameterfvATI, [ :uint, :pointer ], :void],
        [:glTexBumpParameterivATI, [ :uint, :pointer ], :void]
    ]
  end
end

