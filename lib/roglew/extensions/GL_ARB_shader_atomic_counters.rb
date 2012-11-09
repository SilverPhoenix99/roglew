module Roglew
  module GL
    ACTIVE_ATOMIC_COUNTER_BUFFERS                              ||= 0x92D9
    ATOMIC_COUNTER_BUFFER                                      ||= 0x92C0
    ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES        ||= 0x92C6
    ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS               ||= 0x92C5
    ATOMIC_COUNTER_BUFFER_BINDING                              ||= 0x92C1
    ATOMIC_COUNTER_BUFFER_DATA_SIZE                            ||= 0x92C4
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER        ||= 0x92CB
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER        ||= 0x92CA
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER    ||= 0x92C8
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER ||= 0x92C9
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER          ||= 0x92C7
    ATOMIC_COUNTER_BUFFER_SIZE                                 ||= 0x92C3
    ATOMIC_COUNTER_BUFFER_START                                ||= 0x92C2
    MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                         ||= 0x92DC
    MAX_ATOMIC_COUNTER_BUFFER_SIZE                             ||= 0x92D8
    MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                        ||= 0x92D1
    MAX_COMBINED_ATOMIC_COUNTERS                               ||= 0x92D7
    MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                        ||= 0x92D0
    MAX_FRAGMENT_ATOMIC_COUNTERS                               ||= 0x92D6
    MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                        ||= 0x92CF
    MAX_GEOMETRY_ATOMIC_COUNTERS                               ||= 0x92D5
    MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS                    ||= 0x92CD
    MAX_TESS_CONTROL_ATOMIC_COUNTERS                           ||= 0x92D3
    MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS                 ||= 0x92CE
    MAX_TESS_EVALUATION_ATOMIC_COUNTERS                        ||= 0x92D4
    MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                          ||= 0x92CC
    MAX_VERTEX_ATOMIC_COUNTERS                                 ||= 0x92D2
    UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                        ||= 0x92DA
    UNSIGNED_INT_ATOMIC_COUNTER                                ||= 0x92DB
  end
end

module GL_ARB_shader_atomic_counters
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetActiveAtomicCounterBufferiv, [ :uint, :uint, :uint, :pointer ], :void]
  end
end

