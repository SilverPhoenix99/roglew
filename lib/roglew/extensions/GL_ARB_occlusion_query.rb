module Roglew
  module GL
    CURRENT_QUERY_ARB          = 0x8865
    QUERY_COUNTER_BITS_ARB     = 0x8864
    QUERY_RESULT_ARB           = 0x8866
    QUERY_RESULT_AVAILABLE_ARB = 0x8867
    SAMPLES_PASSED_ARB         = 0x8914
  end
end

module GL_ARB_occlusion_query
  module RenderContext
    include Roglew::GLExtension

    functions [:glBeginQueryARB, [ :uint, :uint ], :void],
              [:glDeleteQueriesARB, [ :int, :pointer ], :void],
              [:glEndQueryARB, [ :uint ], :void],
              [:glGenQueriesARB, [ :int, :pointer ], :void],
              [:glGetQueryivARB, [ :uint, :uint, :pointer ], :void],
              [:glGetQueryObjectivARB, [ :uint, :uint, :pointer ], :void],
              [:glGetQueryObjectuivARB, [ :uint, :uint, :pointer ], :void],
              [:glIsQueryARB, [ :uint ], :uchar]
  end
end