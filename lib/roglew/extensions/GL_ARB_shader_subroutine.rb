module Roglew
  module GL
    ACTIVE_SUBROUTINE_MAX_LENGTH         = 0x8E48 unless const_defined? :ACTIVE_SUBROUTINE_MAX_LENGTH
    ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS  = 0x8E47 unless const_defined? :ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
    ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8E49 unless const_defined? :ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
    ACTIVE_SUBROUTINE_UNIFORMS           = 0x8DE6 unless const_defined? :ACTIVE_SUBROUTINE_UNIFORMS
    ACTIVE_SUBROUTINES                   = 0x8DE5 unless const_defined? :ACTIVE_SUBROUTINES
    COMPATIBLE_SUBROUTINES               = 0x8E4B unless const_defined? :COMPATIBLE_SUBROUTINES
    MAX_SUBROUTINE_UNIFORM_LOCATIONS     = 0x8DE8 unless const_defined? :MAX_SUBROUTINE_UNIFORM_LOCATIONS
    MAX_SUBROUTINES                      = 0x8DE7 unless const_defined? :MAX_SUBROUTINES
    NUM_COMPATIBLE_SUBROUTINES           = 0x8E4A unless const_defined? :NUM_COMPATIBLE_SUBROUTINES
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

