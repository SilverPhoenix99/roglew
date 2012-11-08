module Roglew
  module GL
    TRANSPOSE_COLOR_MATRIX_ARB      = 0x84E6 unless const_defined? :TRANSPOSE_COLOR_MATRIX_ARB
    TRANSPOSE_MODELVIEW_MATRIX_ARB  = 0x84E3 unless const_defined? :TRANSPOSE_MODELVIEW_MATRIX_ARB
    TRANSPOSE_PROJECTION_MATRIX_ARB = 0x84E4 unless const_defined? :TRANSPOSE_PROJECTION_MATRIX_ARB
    TRANSPOSE_TEXTURE_MATRIX_ARB    = 0x84E5 unless const_defined? :TRANSPOSE_TEXTURE_MATRIX_ARB
  end
end

module GL_ARB_transpose_matrix
  module RenderContext
    include Roglew::GLExtension

    functions [:glLoadTransposeMatrixdARB, [:double] * 16, :void],
              [:glLoadTransposeMatrixfARB, [:float] * 16, :void],
              [:glMultTransposeMatrixdARB, [:double] * 16, :void],
              [:glMultTransposeMatrixfARB, [:float] * 16, :void]
  end
end

