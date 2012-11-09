module Roglew
  module GL
    COLOR_ARRAY_PARALLEL_POINTERS_INTEL         ||= 0x83F7
    NORMAL_ARRAY_PARALLEL_POINTERS_INTEL        ||= 0x83F6
    PARALLEL_ARRAYS_INTEL                       ||= 0x83F4
    TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL ||= 0x83F8
    VERTEX_ARRAY_PARALLEL_POINTERS_INTEL        ||= 0x83F5
  end
end

module GL_INTEL_parallel_arrays
  module RenderContext
    include Roglew::GLExtension

    functions [:glColorPointervINTEL, [ :int, :uint, :pointer ], :void],
              [:glNormalPointervINTEL, [ :uint, :pointer ], :void],
              [:glTexCoordPointervINTEL, [ :int, :uint, :pointer ], :void],
              [:glVertexPointervINTEL, [ :int, :uint, :pointer ], :void]
  end
end

