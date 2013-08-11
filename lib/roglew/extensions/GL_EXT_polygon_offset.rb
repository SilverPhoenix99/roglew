module Roglew
  module GL
    POLYGON_OFFSET_BIAS_EXT   ||= 0x8039
    POLYGON_OFFSET_EXT        ||= 0x8037
    POLYGON_OFFSET_FACTOR_EXT ||= 0x8038
  end
end

module GL_EXT_polygon_offset
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glPolygonOffsetEXT, [ :float, :float ], :void]
    ]
  end
end

