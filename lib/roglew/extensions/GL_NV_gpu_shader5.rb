module Roglew
  module GL
    FLOAT16_NV             ||= 0x8FF8
    FLOAT16_VEC2_NV        ||= 0x8FF9
    FLOAT16_VEC3_NV        ||= 0x8FFA
    FLOAT16_VEC4_NV        ||= 0x8FFB
    INT16_NV               ||= 0x8FE4
    INT16_VEC2_NV          ||= 0x8FE5
    INT16_VEC3_NV          ||= 0x8FE6
    INT16_VEC4_NV          ||= 0x8FE7
    INT64_NV               ||= 0x140E
    INT64_VEC2_NV          ||= 0x8FE9
    INT64_VEC3_NV          ||= 0x8FEA
    INT64_VEC4_NV          ||= 0x8FEB
    INT8_NV                ||= 0x8FE0
    INT8_VEC2_NV           ||= 0x8FE1
    INT8_VEC3_NV           ||= 0x8FE2
    INT8_VEC4_NV           ||= 0x8FE3
    UNSIGNED_INT16_NV      ||= 0x8FF0
    UNSIGNED_INT16_VEC2_NV ||= 0x8FF1
    UNSIGNED_INT16_VEC3_NV ||= 0x8FF2
    UNSIGNED_INT16_VEC4_NV ||= 0x8FF3
    UNSIGNED_INT64_NV      ||= 0x140F
    UNSIGNED_INT64_VEC2_NV ||= 0x8FF5
    UNSIGNED_INT64_VEC3_NV ||= 0x8FF6
    UNSIGNED_INT64_VEC4_NV ||= 0x8FF7
    UNSIGNED_INT8_NV       ||= 0x8FEC
    UNSIGNED_INT8_VEC2_NV  ||= 0x8FED
    UNSIGNED_INT8_VEC3_NV  ||= 0x8FEE
    UNSIGNED_INT8_VEC4_NV  ||= 0x8FEF
  end
end

module GL_NV_gpu_shader5
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetUniformi64vNV, [ :uint, :int, :pointer ], :void],
              [:glGetUniformui64vNV, [ :uint, :int, :pointer ], :void],
              [:glProgramUniform1i64NV, [ :uint, :int, :int64 ], :void],
              [:glProgramUniform1i64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform1ui64NV, [ :uint, :int, :uint64 ], :void],
              [:glProgramUniform1ui64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2i64NV, [ :uint, :int, :int64, :int64 ], :void],
              [:glProgramUniform2i64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2ui64NV, [ :uint, :int, :uint64, :uint64 ], :void],
              [:glProgramUniform2ui64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3i64NV, [ :uint, :int, :int64, :int64, :int64 ], :void],
              [:glProgramUniform3i64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3ui64NV, [ :uint, :int, :uint64, :uint64, :uint64 ], :void],
              [:glProgramUniform3ui64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4i64NV, [ :uint, :int, :int64, :int64, :int64, :int64 ], :void],
              [:glProgramUniform4i64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4ui64NV, [ :uint, :int, :uint64, :uint64, :uint64, :uint64 ], :void],
              [:glProgramUniform4ui64vNV, [ :uint, :int, :int, :pointer ], :void],
              [:glUniform1i64NV, [ :int, :int64 ], :void],
              [:glUniform1i64vNV, [ :int, :int, :pointer ], :void],
              [:glUniform1ui64NV, [ :int, :uint64 ], :void],
              [:glUniform1ui64vNV, [ :int, :int, :pointer ], :void],
              [:glUniform2i64NV, [ :int, :int64, :int64 ], :void],
              [:glUniform2i64vNV, [ :int, :int, :pointer ], :void],
              [:glUniform2ui64NV, [ :int, :uint64, :uint64 ], :void],
              [:glUniform2ui64vNV, [ :int, :int, :pointer ], :void],
              [:glUniform3i64NV, [ :int, :int64, :int64, :int64 ], :void],
              [:glUniform3i64vNV, [ :int, :int, :pointer ], :void],
              [:glUniform3ui64NV, [ :int, :uint64, :uint64, :uint64 ], :void],
              [:glUniform3ui64vNV, [ :int, :int, :pointer ], :void],
              [:glUniform4i64NV, [ :int, :int64, :int64, :int64, :int64 ], :void],
              [:glUniform4i64vNV, [ :int, :int, :pointer ], :void],
              [:glUniform4ui64NV, [ :int, :uint64, :uint64, :uint64, :uint64 ], :void],
              [:glUniform4ui64vNV, [ :int, :int, :pointer ], :void]
  end
end

