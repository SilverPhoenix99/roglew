module Roglew
  module GL
    CURRENT_OCCLUSION_QUERY_ID_NV = 0x8865
    PIXEL_COUNT_AVAILABLE_NV      = 0x8867
    PIXEL_COUNT_NV                = 0x8866
    PIXEL_COUNTER_BITS_NV         = 0x8864
  end
end

module GL_NV_occlusion_query
  module RenderContext
    include Roglew::GLExtension

    functions [:glBeginOcclusionQueryNV, [ :uint ], :void],
              [:glDeleteOcclusionQueriesNV, [ :int, :pointer ], :void],
              [:glEndOcclusionQueryNV, [  ], :void],
              [:glGenOcclusionQueriesNV, [ :int, :pointer ], :void],
              [:glGetOcclusionQueryivNV, [ :uint, :uint, :pointer ], :void],
              [:glGetOcclusionQueryuivNV, [ :uint, :uint, :pointer ], :void],
              [:glIsOcclusionQueryNV, [ :uint ], :uchar]
  end
end

