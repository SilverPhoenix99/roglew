module Roglew
  module GL
    DEPTH_BOUNDS_EXT      = 0x8891 unless const_defined? :DEPTH_BOUNDS_EXT
    DEPTH_BOUNDS_TEST_EXT = 0x8890 unless const_defined? :DEPTH_BOUNDS_TEST_EXT
  end
end

module GL_EXT_depth_bounds_test
  module RenderContext
    include Roglew::GLExtension

    functions [:glDepthBoundsEXT, [ :double, :double ], :void]
  end
end

