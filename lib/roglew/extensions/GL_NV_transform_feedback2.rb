module Roglew
  module GL
    TRANSFORM_FEEDBACK_BINDING_NV       = 0x8E25
    TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV = 0x8E24
    TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV = 0x8E23
    TRANSFORM_FEEDBACK_NV               = 0x8E22
  end
end

module GL_NV_transform_feedback2
  module RenderContext
    include GLExtension

    functions [:glBindTransformFeedbackNV, [ :uint, :uint ], :void],
              [:glDeleteTransformFeedbacksNV, [ :int, :pointer ], :void],
              [:glDrawTransformFeedbackNV, [ :uint, :uint ], :void],
              [:glGenTransformFeedbacksNV, [ :int, :pointer ], :void],
              [:glIsTransformFeedbackNV, [ :uint ], :uchar],
              [:glPauseTransformFeedbackNV, [  ], :void],
              [:glResumeTransformFeedbackNV, [  ], :void]
  end
end

