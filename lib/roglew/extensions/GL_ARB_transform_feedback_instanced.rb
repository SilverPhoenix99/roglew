module GL_ARB_transform_feedback_instanced
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDrawTransformFeedbackInstanced, [ :uint, :uint, :int ], :void],
        [:glDrawTransformFeedbackStreamInstanced, [ :uint, :uint, :uint, :int ], :void]
    ]
  end
end

