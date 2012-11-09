module Roglew
  module GL
    TRANSPOSE_COLOR_MATRIX_ARB      ||= 0x84E6
    TRANSPOSE_MODELVIEW_MATRIX_ARB  ||= 0x84E3
    TRANSPOSE_PROJECTION_MATRIX_ARB ||= 0x84E4
    TRANSPOSE_TEXTURE_MATRIX_ARB    ||= 0x84E5
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

