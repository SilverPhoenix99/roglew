module Roglew
  module GL
    TRANSFORM_FEEDBACK               = 0x8E22
    TRANSFORM_FEEDBACK_BINDING       = 0x8E25
    TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8E24
    TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8E23
  end
end

module GL_ARB_transform_feedback2
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindTransformFeedback, [ :uint, :uint ], :void],
              [:glDeleteTransformFeedbacks, [ :int, :pointer ], :void],
              [:glDrawTransformFeedback, [ :uint, :uint ], :void],
              [:glGenTransformFeedbacks, [ :int, :pointer ], :void],
              [:glIsTransformFeedback, [ :uint ], :uchar],
              [:glPauseTransformFeedback, [  ], :void],
              [:glResumeTransformFeedback, [  ], :void]
  end
end

