module GL_ARB_transform_feedback_instanced
  module RenderContext
    include GLExtension

    functions [:glDrawTransformFeedbackInstanced, [ :uint, :uint, :int ], :void],
              [:glDrawTransformFeedbackStreamInstanced, [ :uint, :uint, :uint, :int ], :void]
  end
end

