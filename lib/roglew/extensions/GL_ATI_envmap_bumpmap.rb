module Roglew
  module GL
    BUMP_ENVMAP_ATI          = 0x877B unless const_defined? :BUMP_ENVMAP_ATI
    BUMP_NUM_TEX_UNITS_ATI   = 0x8777 unless const_defined? :BUMP_NUM_TEX_UNITS_ATI
    BUMP_ROT_MATRIX_ATI      = 0x8775 unless const_defined? :BUMP_ROT_MATRIX_ATI
    BUMP_ROT_MATRIX_SIZE_ATI = 0x8776 unless const_defined? :BUMP_ROT_MATRIX_SIZE_ATI
    BUMP_TARGET_ATI          = 0x877C unless const_defined? :BUMP_TARGET_ATI
    BUMP_TEX_UNITS_ATI       = 0x8778 unless const_defined? :BUMP_TEX_UNITS_ATI
    DU8DV8_ATI               = 0x877A unless const_defined? :DU8DV8_ATI
    DUDV_ATI                 = 0x8779 unless const_defined? :DUDV_ATI
  end
end

module GL_ATI_envmap_bumpmap
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetTexBumpParameterfvATI, [ :uint, :pointer ], :void],
              [:glGetTexBumpParameterivATI, [ :uint, :pointer ], :void],
              [:glTexBumpParameterfvATI, [ :uint, :pointer ], :void],
              [:glTexBumpParameterivATI, [ :uint, :pointer ], :void]
  end
end

