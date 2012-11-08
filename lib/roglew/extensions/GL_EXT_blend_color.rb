module Roglew
  module GL
    BLEND_COLOR_EXT              = 0x8005 unless const_defined? :BLEND_COLOR_EXT
    CONSTANT_ALPHA_EXT           = 0x8003 unless const_defined? :CONSTANT_ALPHA_EXT
    CONSTANT_COLOR_EXT           = 0x8001 unless const_defined? :CONSTANT_COLOR_EXT
    ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004 unless const_defined? :ONE_MINUS_CONSTANT_ALPHA_EXT
    ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002 unless const_defined? :ONE_MINUS_CONSTANT_COLOR_EXT
  end
end

module GL_EXT_blend_color
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendColorEXT, [ :float, :float, :float, :float ], :void]
  end
end

