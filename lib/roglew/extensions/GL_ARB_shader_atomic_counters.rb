module Roglew
  module GL
    ACTIVE_ATOMIC_COUNTER_BUFFERS                              = 0x92D9 unless const_defined? :ACTIVE_ATOMIC_COUNTER_BUFFERS
    ATOMIC_COUNTER_BUFFER                                      = 0x92C0 unless const_defined? :ATOMIC_COUNTER_BUFFER
    ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES        = 0x92C6 unless const_defined? :ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
    ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS               = 0x92C5 unless const_defined? :ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
    ATOMIC_COUNTER_BUFFER_BINDING                              = 0x92C1 unless const_defined? :ATOMIC_COUNTER_BUFFER_BINDING
    ATOMIC_COUNTER_BUFFER_DATA_SIZE                            = 0x92C4 unless const_defined? :ATOMIC_COUNTER_BUFFER_DATA_SIZE
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER        = 0x92CB unless const_defined? :ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER        = 0x92CA unless const_defined? :ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER    = 0x92C8 unless const_defined? :ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9 unless const_defined? :ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER          = 0x92C7 unless const_defined? :ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
    ATOMIC_COUNTER_BUFFER_SIZE                                 = 0x92C3 unless const_defined? :ATOMIC_COUNTER_BUFFER_SIZE
    ATOMIC_COUNTER_BUFFER_START                                = 0x92C2 unless const_defined? :ATOMIC_COUNTER_BUFFER_START
    MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                         = 0x92DC unless const_defined? :MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
    MAX_ATOMIC_COUNTER_BUFFER_SIZE                             = 0x92D8 unless const_defined? :MAX_ATOMIC_COUNTER_BUFFER_SIZE
    MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                        = 0x92D1 unless const_defined? :MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
    MAX_COMBINED_ATOMIC_COUNTERS                               = 0x92D7 unless const_defined? :MAX_COMBINED_ATOMIC_COUNTERS
    MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                        = 0x92D0 unless const_defined? :MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
    MAX_FRAGMENT_ATOMIC_COUNTERS                               = 0x92D6 unless const_defined? :MAX_FRAGMENT_ATOMIC_COUNTERS
    MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                        = 0x92CF unless const_defined? :MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
    MAX_GEOMETRY_ATOMIC_COUNTERS                               = 0x92D5 unless const_defined? :MAX_GEOMETRY_ATOMIC_COUNTERS
    MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS                    = 0x92CD unless const_defined? :MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
    MAX_TESS_CONTROL_ATOMIC_COUNTERS                           = 0x92D3 unless const_defined? :MAX_TESS_CONTROL_ATOMIC_COUNTERS
    MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS                 = 0x92CE unless const_defined? :MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
    MAX_TESS_EVALUATION_ATOMIC_COUNTERS                        = 0x92D4 unless const_defined? :MAX_TESS_EVALUATION_ATOMIC_COUNTERS
    MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                          = 0x92CC unless const_defined? :MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
    MAX_VERTEX_ATOMIC_COUNTERS                                 = 0x92D2 unless const_defined? :MAX_VERTEX_ATOMIC_COUNTERS
    UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                        = 0x92DA unless const_defined? :UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
    UNSIGNED_INT_ATOMIC_COUNTER                                = 0x92DB unless const_defined? :UNSIGNED_INT_ATOMIC_COUNTER
  end
end

module GL_ARB_shader_atomic_counters
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetActiveAtomicCounterBufferiv, [ :uint, :uint, :uint, :pointer ], :void]
  end
end

