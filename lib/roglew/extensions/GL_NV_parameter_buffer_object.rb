module Roglew
  module GL
    FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV     ||= 0x8DA4
    GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV     ||= 0x8DA3
    MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV ||= 0x8DA0
    MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV     ||= 0x8DA1
    VERTEX_PROGRAM_PARAMETER_BUFFER_NV       ||= 0x8DA2
  end
end

module GL_NV_parameter_buffer_object
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glProgramBufferParametersfvNV, [ :uint, :uint, :uint, :int, :pointer ], :void],
        [:glProgramBufferParametersIivNV, [ :uint, :uint, :uint, :int, :pointer ], :void],
        [:glProgramBufferParametersIuivNV, [ :uint, :uint, :uint, :int, :pointer ], :void]
    ]
  end
end

