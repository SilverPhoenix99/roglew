module Roglew
  module GL
    SUBSAMPLE_DISTANCE_AMD = 0x883F unless const_defined? :SUBSAMPLE_DISTANCE_AMD
  end
end

module GL_AMD_sample_positions
  module RenderContext
    include Roglew::GLExtension

    functions [:glSetMultisamplefvAMD, [ :uint, :uint, :pointer ], :void]
  end
end