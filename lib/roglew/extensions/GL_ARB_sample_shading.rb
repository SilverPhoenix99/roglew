module Roglew
  module GL
    MIN_SAMPLE_SHADING_VALUE_ARB ||= 0x8C37
    SAMPLE_SHADING_ARB           ||= 0x8C36
  end
end

module GL_ARB_sample_shading
  module RenderContext
    include Roglew::GLExtension

    functions [:glMinSampleShadingARB, [ :float ], :void]
  end
end

