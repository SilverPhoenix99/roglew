module Roglew
  module GL
    MAX_TRANSFORM_FEEDBACK_BUFFERS ||= 0x8E70
    MAX_VERTEX_STREAMS             ||= 0x8E71
  end
end

module GL_ARB_transform_feedback3
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBeginQueryIndexed, [ :uint, :uint, :uint ], :void],
        [:glDrawTransformFeedbackStream, [ :uint, :uint, :uint ], :void],
        [:glEndQueryIndexed, [ :uint, :uint ], :void],
        [:glGetQueryIndexediv, [ :uint, :uint, :uint, :pointer ], :void]
    ]
  end
end

