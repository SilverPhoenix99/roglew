module Roglew
  module GL
    CURRENT_MATRIX_INDEX_ARB           ||= 0x8845
    CURRENT_PALETTE_MATRIX_ARB         ||= 0x8843
    MATRIX_INDEX_ARRAY_ARB             ||= 0x8844
    MATRIX_INDEX_ARRAY_POINTER_ARB     ||= 0x8849
    MATRIX_INDEX_ARRAY_SIZE_ARB        ||= 0x8846
    MATRIX_INDEX_ARRAY_STRIDE_ARB      ||= 0x8848
    MATRIX_INDEX_ARRAY_TYPE_ARB        ||= 0x8847
    MATRIX_PALETTE_ARB                 ||= 0x8840
    MAX_MATRIX_PALETTE_STACK_DEPTH_ARB ||= 0x8841
    MAX_PALETTE_MATRICES_ARB           ||= 0x8842
  end
end

module GL_ARB_matrix_palette
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glCurrentPaletteMatrixARB, [ :int ], :void],
        [:glMatrixIndexPointerARB, [ :int, :uint, :int, :pointer ], :void],
        [:glMatrixIndexubvARB, [ :int, :pointer ], :void],
        [:glMatrixIndexuivARB, [ :int, :pointer ], :void],
        [:glMatrixIndexusvARB, [ :int, :pointer ], :void]
    ]
  end
end