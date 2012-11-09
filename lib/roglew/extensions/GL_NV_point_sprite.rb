module Roglew
  module GL
    COORD_REPLACE_NV       ||= 0x8862
    POINT_SPRITE_NV        ||= 0x8861
    POINT_SPRITE_R_MODE_NV ||= 0x8863
  end
end

module GL_NV_point_sprite
  module RenderContext
    include Roglew::GLExtension

    functions [:glPointParameteriNV, [ :uint, :int ], :void],
              [:glPointParameterivNV, [ :uint, :pointer ], :void]
  end
end

