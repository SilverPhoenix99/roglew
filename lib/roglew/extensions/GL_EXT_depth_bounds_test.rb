module Roglew
  module GL
    DEPTH_BOUNDS_EXT      ||= 0x8891
    DEPTH_BOUNDS_TEST_EXT ||= 0x8890
  end
end

module GL_EXT_depth_bounds_test
  module RenderContext
    include Roglew::GLExtension

    functions [:glDepthBoundsEXT, [ :double, :double ], :void]
  end
end

