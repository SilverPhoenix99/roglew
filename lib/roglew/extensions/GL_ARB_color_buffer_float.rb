module Roglew
  module GL
    CLAMP_FRAGMENT_COLOR_ARB||= 0x891B
    CLAMP_READ_COLOR_ARB    ||= 0x891C
    CLAMP_VERTEX_COLOR_ARB  ||= 0x891A
    FIXED_ONLY_ARB          ||= 0x891D
    RGBA_FLOAT_MODE_ARB     ||= 0x8820
  end
end

module GL_ARB_color_buffer_float
  module RenderContext
    include Roglew::GLExtension

    functions [:glClampColorARB, [ :uint, :uint ], :void]
  end
end