module Roglew
  module GL
    TRANSFORM_FEEDBACK               = 0x8E22 unless const_defined? :TRANSFORM_FEEDBACK
    TRANSFORM_FEEDBACK_BINDING       = 0x8E25 unless const_defined? :TRANSFORM_FEEDBACK_BINDING
    TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8E24 unless const_defined? :TRANSFORM_FEEDBACK_BUFFER_ACTIVE
    TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8E23 unless const_defined? :TRANSFORM_FEEDBACK_BUFFER_PAUSED
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

