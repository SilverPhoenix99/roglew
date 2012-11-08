module Roglew
  module GL
    CLAMP_FRAGMENT_COLOR_ARB = 0x891B unless const_defined? :CLAMP_FRAGMENT_COLOR_ARB
    CLAMP_READ_COLOR_ARB     = 0x891C unless const_defined? :CLAMP_READ_COLOR_ARB
    CLAMP_VERTEX_COLOR_ARB   = 0x891A unless const_defined? :CLAMP_VERTEX_COLOR_ARB
    FIXED_ONLY_ARB           = 0x891D unless const_defined? :FIXED_ONLY_ARB
    RGBA_FLOAT_MODE_ARB      = 0x8820 unless const_defined? :RGBA_FLOAT_MODE_ARB
  end
end

module GL_ARB_color_buffer_float
  module RenderContext
    include Roglew::GLExtension

    functions [:glClampColorARB, [ :uint, :uint ], :void]
  end
end