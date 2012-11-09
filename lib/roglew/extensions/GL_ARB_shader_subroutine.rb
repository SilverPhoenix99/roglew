module Roglew
  module GL
    ACTIVE_SUBROUTINE_MAX_LENGTH         ||= 0x8E48
    ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS  ||= 0x8E47
    ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH ||= 0x8E49
    ACTIVE_SUBROUTINE_UNIFORMS           ||= 0x8DE6
    ACTIVE_SUBROUTINES                   ||= 0x8DE5
    COMPATIBLE_SUBROUTINES               ||= 0x8E4B
    MAX_SUBROUTINE_UNIFORM_LOCATIONS     ||= 0x8DE8
    MAX_SUBROUTINES                      ||= 0x8DE7
    NUM_COMPATIBLE_SUBROUTINES           ||= 0x8E4A
  end
end

module GL_ARB_shader_subroutine
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetActiveSubroutineName, [ :uint, :uint, :uint, :int, :pointer, :string ], :void],
              [:glGetActiveSubroutineUniformiv, [ :uint, :uint, :uint, :uint, :pointer ], :void],
              [:glGetActiveSubroutineUniformName, [ :uint, :uint, :uint, :int, :pointer, :string ], :void],
              [:glGetProgramStageiv, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetSubroutineIndex, [ :uint, :uint, :string ], :uint],
              [:glGetSubroutineUniformLocation, [ :uint, :uint, :string ], :int],
              [:glGetUniformSubroutineuiv, [ :uint, :int, :pointer ], :void],
              [:glUniformSubroutinesuiv, [ :uint, :int, :pointer ], :void]
  end
end

