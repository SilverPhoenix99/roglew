module Roglew
  module GL
    CURRENT_FOG_COORDINATE_EXT       ||= 0x8453
    FOG_COORDINATE_ARRAY_EXT         ||= 0x8457
    FOG_COORDINATE_ARRAY_POINTER_EXT ||= 0x8456
    FOG_COORDINATE_ARRAY_STRIDE_EXT  ||= 0x8455
    FOG_COORDINATE_ARRAY_TYPE_EXT    ||= 0x8454
    FOG_COORDINATE_EXT               ||= 0x8451
    FOG_COORDINATE_SOURCE_EXT        ||= 0x8450
    FRAGMENT_DEPTH_EXT               ||= 0x8452
  end
end

module GL_EXT_fog_coord
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glFogCoorddEXT, [ :double ], :void],
        [:glFogCoorddvEXT, [ :pointer ], :void],
        [:glFogCoordfEXT, [ :float ], :void],
        [:glFogCoordfvEXT, [ :pointer ], :void]
    ]
  end
end

