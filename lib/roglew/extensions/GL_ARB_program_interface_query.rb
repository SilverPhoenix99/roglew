module Roglew
  module GL
    ACTIVE_RESOURCES                     = 0x92F5 unless const_defined? :ACTIVE_RESOURCES
    ACTIVE_VARIABLES                     = 0x9305 unless const_defined? :ACTIVE_VARIABLES
    ARRAY_SIZE                           = 0x92FB unless const_defined? :ARRAY_SIZE
    ARRAY_STRIDE                         = 0x92FE unless const_defined? :ARRAY_STRIDE
    ATOMIC_COUNTER_BUFFER_INDEX          = 0x9301 unless const_defined? :ATOMIC_COUNTER_BUFFER_INDEX
    BLOCK_INDEX                          = 0x92FD unless const_defined? :BLOCK_INDEX
    BUFFER_BINDING                       = 0x9302 unless const_defined? :BUFFER_BINDING
    BUFFER_DATA_SIZE                     = 0x9303 unless const_defined? :BUFFER_DATA_SIZE
    BUFFER_VARIABLE                      = 0x92E5 unless const_defined? :BUFFER_VARIABLE
    COMPUTE_SUBROUTINE                   = 0x92ED unless const_defined? :COMPUTE_SUBROUTINE
    COMPUTE_SUBROUTINE_UNIFORM           = 0x92F3 unless const_defined? :COMPUTE_SUBROUTINE_UNIFORM
    FRAGMENT_SUBROUTINE                  = 0x92EC unless const_defined? :FRAGMENT_SUBROUTINE
    FRAGMENT_SUBROUTINE_UNIFORM          = 0x92F2 unless const_defined? :FRAGMENT_SUBROUTINE_UNIFORM
    GEOMETRY_SUBROUTINE                  = 0x92EB unless const_defined? :GEOMETRY_SUBROUTINE
    GEOMETRY_SUBROUTINE_UNIFORM          = 0x92F1 unless const_defined? :GEOMETRY_SUBROUTINE_UNIFORM
    IS_PER_PATCH                         = 0x92E7 unless const_defined? :IS_PER_PATCH
    IS_ROW_MAJOR                         = 0x9300 unless const_defined? :IS_ROW_MAJOR
    LOCATION                             = 0x930E unless const_defined? :LOCATION
    LOCATION_INDEX                       = 0x930F unless const_defined? :LOCATION_INDEX
    MATRIX_STRIDE                        = 0x92FF unless const_defined? :MATRIX_STRIDE
    MAX_NAME_LENGTH                      = 0x92F6 unless const_defined? :MAX_NAME_LENGTH
    MAX_NUM_ACTIVE_VARIABLES             = 0x92F7 unless const_defined? :MAX_NUM_ACTIVE_VARIABLES
    MAX_NUM_COMPATIBLE_SUBROUTINES       = 0x92F8 unless const_defined? :MAX_NUM_COMPATIBLE_SUBROUTINES
    NAME_LENGTH                          = 0x92F9 unless const_defined? :NAME_LENGTH
    NUM_ACTIVE_VARIABLES                 = 0x9304 unless const_defined? :NUM_ACTIVE_VARIABLES
    OFFSET                               = 0x92FC unless const_defined? :OFFSET
    PROGRAM_INPUT                        = 0x92E3 unless const_defined? :PROGRAM_INPUT
    PROGRAM_OUTPUT                       = 0x92E4 unless const_defined? :PROGRAM_OUTPUT
    REFERENCED_BY_COMPUTE_SHADER         = 0x930B unless const_defined? :REFERENCED_BY_COMPUTE_SHADER
    REFERENCED_BY_FRAGMENT_SHADER        = 0x930A unless const_defined? :REFERENCED_BY_FRAGMENT_SHADER
    REFERENCED_BY_GEOMETRY_SHADER        = 0x9309 unless const_defined? :REFERENCED_BY_GEOMETRY_SHADER
    REFERENCED_BY_TESS_CONTROL_SHADER    = 0x9307 unless const_defined? :REFERENCED_BY_TESS_CONTROL_SHADER
    REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308 unless const_defined? :REFERENCED_BY_TESS_EVALUATION_SHADER
    REFERENCED_BY_VERTEX_SHADER          = 0x9306 unless const_defined? :REFERENCED_BY_VERTEX_SHADER
    SHADER_STORAGE_BLOCK                 = 0x92E6 unless const_defined? :SHADER_STORAGE_BLOCK
    TESS_CONTROL_SUBROUTINE              = 0x92E9 unless const_defined? :TESS_CONTROL_SUBROUTINE
    TESS_CONTROL_SUBROUTINE_UNIFORM      = 0x92EF unless const_defined? :TESS_CONTROL_SUBROUTINE_UNIFORM
    TESS_EVALUATION_SUBROUTINE           = 0x92EA unless const_defined? :TESS_EVALUATION_SUBROUTINE
    TESS_EVALUATION_SUBROUTINE_UNIFORM   = 0x92F0 unless const_defined? :TESS_EVALUATION_SUBROUTINE_UNIFORM
    TOP_LEVEL_ARRAY_SIZE                 = 0x930C unless const_defined? :TOP_LEVEL_ARRAY_SIZE
    TOP_LEVEL_ARRAY_STRIDE               = 0x930D unless const_defined? :TOP_LEVEL_ARRAY_STRIDE
    TRANSFORM_FEEDBACK_VARYING           = 0x92F4 unless const_defined? :TRANSFORM_FEEDBACK_VARYING
    TYPE                                 = 0x92FA unless const_defined? :TYPE
    UNIFORM                              = 0x92E1 unless const_defined? :UNIFORM
    UNIFORM_BLOCK                        = 0x92E2 unless const_defined? :UNIFORM_BLOCK
    VERTEX_SUBROUTINE                    = 0x92E8 unless const_defined? :VERTEX_SUBROUTINE
    VERTEX_SUBROUTINE_UNIFORM            = 0x92EE unless const_defined? :VERTEX_SUBROUTINE_UNIFORM
  end
end

module GL_ARB_program_interface_query
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetProgramInterfaceiv, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetProgramResourceIndex, [ :uint, :uint, :string ], :uint],
              [:glGetProgramResourceiv, [ :uint, :uint, :uint, :int, :pointer, :int, :pointer, :pointer ], :void],
              [:glGetProgramResourceLocation, [ :uint, :uint, :string ], :int],
              [:glGetProgramResourceLocationIndex, [ :uint, :uint, :string ], :int],
              [:glGetProgramResourceName, [ :uint, :uint, :uint, :int, :pointer, :string ], :void]
  end
end