module Roglew
  module GL
    DATA_BUFFER_AMD         = 0x9151
    PERFORMANCE_MONITOR_AMD = 0x9152
    QUERY_OBJECT_AMD        = 0x9153
    SAMPLER_OBJECT_AMD      = 0x9155
    VERTEX_ARRAY_OBJECT_AMD = 0x9154
  end
end

module GL_AMD_name_gen_delete
  module RenderContext
    include GLExtension

    functions [:glDeleteNamesAMD, [ :uint, :uint, :pointer ], :void],
              [:glGenNamesAMD, [ :uint, :uint, :pointer ], :void],
              [:glIsNameAMD, [ :uint, :uint ], :uchar]
  end
end