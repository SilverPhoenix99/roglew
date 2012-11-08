module Roglew
  module GL
    CURRENT_MATRIX_INDEX_ARB           = 0x8845 unless const_defined? :CURRENT_MATRIX_INDEX_ARB
    CURRENT_PALETTE_MATRIX_ARB         = 0x8843 unless const_defined? :CURRENT_PALETTE_MATRIX_ARB
    MATRIX_INDEX_ARRAY_ARB             = 0x8844 unless const_defined? :MATRIX_INDEX_ARRAY_ARB
    MATRIX_INDEX_ARRAY_POINTER_ARB     = 0x8849 unless const_defined? :MATRIX_INDEX_ARRAY_POINTER_ARB
    MATRIX_INDEX_ARRAY_SIZE_ARB        = 0x8846 unless const_defined? :MATRIX_INDEX_ARRAY_SIZE_ARB
    MATRIX_INDEX_ARRAY_STRIDE_ARB      = 0x8848 unless const_defined? :MATRIX_INDEX_ARRAY_STRIDE_ARB
    MATRIX_INDEX_ARRAY_TYPE_ARB        = 0x8847 unless const_defined? :MATRIX_INDEX_ARRAY_TYPE_ARB
    MATRIX_PALETTE_ARB                 = 0x8840 unless const_defined? :MATRIX_PALETTE_ARB
    MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 0x8841 unless const_defined? :MAX_MATRIX_PALETTE_STACK_DEPTH_ARB
    MAX_PALETTE_MATRICES_ARB           = 0x8842 unless const_defined? :MAX_PALETTE_MATRICES_ARB
  end
end

module GL_ARB_matrix_palette
  module RenderContext
    include Roglew::GLExtension

    functions [:glCurrentPaletteMatrixARB, [ :int ], :void],
              [:glMatrixIndexPointerARB, [ :int, :uint, :int, :pointer ], :void],
              [:glMatrixIndexubvARB, [ :int, :pointer ], :void],
              [:glMatrixIndexuivARB, [ :int, :pointer ], :void],
              [:glMatrixIndexusvARB, [ :int, :pointer ], :void]
  end
end