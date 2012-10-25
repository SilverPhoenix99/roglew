module Roglew
  module GL
    INTERLEAVED_ATTRIBS_EXT                           = 0x8C8C
    MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT = 0x8C8A
    MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT       = 0x8C8B
    MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT    = 0x8C80
    PRIMITIVES_GENERATED_EXT                          = 0x8C87
    RASTERIZER_DISCARD_EXT                            = 0x8C89
    SEPARATE_ATTRIBS_EXT                              = 0x8C8D
    TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT             = 0x8C8F
    TRANSFORM_FEEDBACK_BUFFER_EXT                     = 0x8C8E
    TRANSFORM_FEEDBACK_BUFFER_MODE_EXT                = 0x8C7F
    TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT                = 0x8C85
    TRANSFORM_FEEDBACK_BUFFER_START_EXT               = 0x8C84
    TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT         = 0x8C88
    TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT         = 0x8C76
    TRANSFORM_FEEDBACK_VARYINGS_EXT                   = 0x8C83
  end
end

module GL_EXT_transform_feedback
  module RenderContext
    include GLExtension

    functions [:glBeginTransformFeedbackEXT, [ :uint ], :void],
              [:glBindBufferBaseEXT, [ :uint, :uint, :uint ], :void],
              [:glBindBufferOffsetEXT, [ :uint, :uint, :uint, :int64 ], :void],
              [:glBindBufferRangeEXT, [ :uint, :uint, :uint, :int64, :int64 ], :void],
              [:glEndTransformFeedbackEXT, [  ], :void],
              [:glGetTransformFeedbackVaryingEXT, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void],
              [:glTransformFeedbackVaryingsEXT, [ :uint, :int, :pointer, :uint ], :void]
  end
end

