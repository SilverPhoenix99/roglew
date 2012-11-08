module Roglew
  module GL
    CG_FRAGMENT_SHADER_EXT = 0x890F unless const_defined? :CG_FRAGMENT_SHADER_EXT
    CG_VERTEX_SHADER_EXT   = 0x890E unless const_defined? :CG_VERTEX_SHADER_EXT
  end
end