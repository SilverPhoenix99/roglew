module Roglew
  module GL
    QUERY_BY_REGION_NO_WAIT_NV ||= 0x8E16
    QUERY_BY_REGION_WAIT_NV    ||= 0x8E15
    QUERY_NO_WAIT_NV           ||= 0x8E14
    QUERY_WAIT_NV              ||= 0x8E13
  end
end

module GL_NV_conditional_render
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBeginConditionalRenderNV, [ :uint, :uint ], :void],
        [:glEndConditionalRenderNV, [], :void]
    ]
  end
end

