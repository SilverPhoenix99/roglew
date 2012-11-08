module Roglew
  module GL
    DATA_BUFFER_AMD         = 0x9151 unless const_defined? :DATA_BUFFER_AMD
    PERFORMANCE_MONITOR_AMD = 0x9152 unless const_defined? :PERFORMANCE_MONITOR_AMD
    QUERY_OBJECT_AMD        = 0x9153 unless const_defined? :QUERY_OBJECT_AMD
    SAMPLER_OBJECT_AMD      = 0x9155 unless const_defined? :SAMPLER_OBJECT_AMD
    VERTEX_ARRAY_OBJECT_AMD = 0x9154 unless const_defined? :VERTEX_ARRAY_OBJECT_AMD
  end
end

module GL_AMD_name_gen_delete
  module RenderContext
    include Roglew::GLExtension

    functions [:glDeleteNamesAMD, [ :uint, :uint, :pointer ], :void],
              [:glGenNamesAMD, [ :uint, :uint, :pointer ], :void],
              [:glIsNameAMD, [ :uint, :uint ], :uchar]
  end
end