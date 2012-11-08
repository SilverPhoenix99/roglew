module Roglew
  module GL
    MIN_SAMPLE_SHADING_VALUE_ARB = 0x8C37 unless const_defined? :MIN_SAMPLE_SHADING_VALUE_ARB
    SAMPLE_SHADING_ARB           = 0x8C36 unless const_defined? :SAMPLE_SHADING_ARB
  end
end

module GL_ARB_sample_shading
  module RenderContext
    include Roglew::GLExtension

    functions [:glMinSampleShadingARB, [ :float ], :void]
  end
end

