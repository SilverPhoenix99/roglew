module Roglew
  module GL
    ACTIVE_RESOURCES                     ||= 0x92F5
    ACTIVE_VARIABLES                     ||= 0x9305
    ARRAY_SIZE                           ||= 0x92FB
    ARRAY_STRIDE                         ||= 0x92FE
    ATOMIC_COUNTER_BUFFER_INDEX          ||= 0x9301
    BLOCK_INDEX                          ||= 0x92FD
    BUFFER_BINDING                       ||= 0x9302
    BUFFER_DATA_SIZE                     ||= 0x9303
    BUFFER_VARIABLE                      ||= 0x92E5
    COMPUTE_SUBROUTINE                   ||= 0x92ED
    COMPUTE_SUBROUTINE_UNIFORM           ||= 0x92F3
    FRAGMENT_SUBROUTINE                  ||= 0x92EC
    FRAGMENT_SUBROUTINE_UNIFORM          ||= 0x92F2
    GEOMETRY_SUBROUTINE                  ||= 0x92EB
    GEOMETRY_SUBROUTINE_UNIFORM          ||= 0x92F1
    IS_PER_PATCH                         ||= 0x92E7
    IS_ROW_MAJOR                         ||= 0x9300
    LOCATION                             ||= 0x930E
    LOCATION_INDEX                       ||= 0x930F
    MATRIX_STRIDE                        ||= 0x92FF
    MAX_NAME_LENGTH                      ||= 0x92F6
    MAX_NUM_ACTIVE_VARIABLES             ||= 0x92F7
    MAX_NUM_COMPATIBLE_SUBROUTINES       ||= 0x92F8
    NAME_LENGTH                          ||= 0x92F9
    NUM_ACTIVE_VARIABLES                 ||= 0x9304
    OFFSET                               ||= 0x92FC
    PROGRAM_INPUT                        ||= 0x92E3
    PROGRAM_OUTPUT                       ||= 0x92E4
    REFERENCED_BY_COMPUTE_SHADER         ||= 0x930B
    REFERENCED_BY_FRAGMENT_SHADER        ||= 0x930A
    REFERENCED_BY_GEOMETRY_SHADER        ||= 0x9309
    REFERENCED_BY_TESS_CONTROL_SHADER    ||= 0x9307
    REFERENCED_BY_TESS_EVALUATION_SHADER ||= 0x9308
    REFERENCED_BY_VERTEX_SHADER          ||= 0x9306
    SHADER_STORAGE_BLOCK                 ||= 0x92E6
    TESS_CONTROL_SUBROUTINE              ||= 0x92E9
    TESS_CONTROL_SUBROUTINE_UNIFORM      ||= 0x92EF
    TESS_EVALUATION_SUBROUTINE           ||= 0x92EA
    TESS_EVALUATION_SUBROUTINE_UNIFORM   ||= 0x92F0
    TOP_LEVEL_ARRAY_SIZE                 ||= 0x930C
    TOP_LEVEL_ARRAY_STRIDE               ||= 0x930D
    TRANSFORM_FEEDBACK_VARYING           ||= 0x92F4
    TYPE                                 ||= 0x92FA
    UNIFORM                              ||= 0x92E1
    UNIFORM_BLOCK                        ||= 0x92E2
    VERTEX_SUBROUTINE                    ||= 0x92E8
    VERTEX_SUBROUTINE_UNIFORM            ||= 0x92EE
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