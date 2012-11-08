module Roglew
  module GL
    CURRENT_FOG_COORDINATE_EXT       = 0x8453 unless const_defined? :CURRENT_FOG_COORDINATE_EXT
    FOG_COORDINATE_ARRAY_EXT         = 0x8457 unless const_defined? :FOG_COORDINATE_ARRAY_EXT
    FOG_COORDINATE_ARRAY_POINTER_EXT = 0x8456 unless const_defined? :FOG_COORDINATE_ARRAY_POINTER_EXT
    FOG_COORDINATE_ARRAY_STRIDE_EXT  = 0x8455 unless const_defined? :FOG_COORDINATE_ARRAY_STRIDE_EXT
    FOG_COORDINATE_ARRAY_TYPE_EXT    = 0x8454 unless const_defined? :FOG_COORDINATE_ARRAY_TYPE_EXT
    FOG_COORDINATE_EXT               = 0x8451 unless const_defined? :FOG_COORDINATE_EXT
    FOG_COORDINATE_SOURCE_EXT        = 0x8450 unless const_defined? :FOG_COORDINATE_SOURCE_EXT
    FRAGMENT_DEPTH_EXT               = 0x8452 unless const_defined? :FRAGMENT_DEPTH_EXT
  end
end

module GL_EXT_fog_coord
  module RenderContext
    include Roglew::GLExtension

    functions [:glFogCoorddEXT, [ :double ], :void],
              [:glFogCoorddvEXT, [ :pointer ], :void],
              [:glFogCoordfEXT, [ :float ], :void],
              [:glFogCoordfvEXT, [ :pointer ], :void]
  end
end

