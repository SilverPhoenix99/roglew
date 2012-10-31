module Roglew
  module GL
    BUFFER_GPU_ADDRESS_NV        = 0x8F1D
    GPU_ADDRESS_NV               = 0x8F34
    MAX_SHADER_BUFFER_ADDRESS_NV = 0x8F35
  end
end

module GL_NV_shader_buffer_load
  module RenderContext
    include GLExtension

    functions [:glGetBufferParameterui64vNV, [ :uint, :uint, :pointer ], :void],
              [:glGetIntegerui64vNV, [ :uint, :pointer ], :void],
              [:glGetNamedBufferParameterui64vNV, [ :uint, :uint, :pointer ], :void],
              [:glIsBufferResidentNV, [ :uint ], :uchar],
              [:glIsNamedBufferResidentNV, [ :uint ], :uchar],
              [:glMakeBufferNonResidentNV, [ :uint ], :void],
              [:glMakeBufferResidentNV, [ :uint, :uint ], :void],
              [:glMakeNamedBufferNonResidentNV, [ :uint ], :void],
              [:glMakeNamedBufferResidentNV, [ :uint, :uint ], :void],
              [:glProgramUniformui64NV, [ :uint, :int, :uint64 ], :void],
              [:glProgramUniformui64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glUniformui64NV, [ :int, :uint64 ], :void],
              [:glUniformui64vNV, [ :int, :int, :pointer ], :void]
  end
end

