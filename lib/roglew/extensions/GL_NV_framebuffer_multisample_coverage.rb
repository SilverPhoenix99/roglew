module Roglew
  module GL
    MAX_MULTISAMPLE_COVERAGE_MODES_NV = 0x8E11
    MULTISAMPLE_COVERAGE_MODES_NV     = 0x8E12
    RENDERBUFFER_COLOR_SAMPLES_NV     = 0x8E10
    RENDERBUFFER_COVERAGE_SAMPLES_NV  = 0x8CAB
  end
end

module GL_NV_framebuffer_multisample_coverage
  module RenderContext
    include GLExtension

    functions [:glRenderbufferStorageMultisampleCoverageNV, [ :uint, :int, :int, :uint, :int, :int ], :void]
  end
end

