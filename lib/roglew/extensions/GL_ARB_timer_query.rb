module Roglew
  module GL
    TIME_ELAPSED = 0x88BF unless const_defined? :TIME_ELAPSED
    TIMESTAMP    = 0x8E28 unless const_defined? :TIMESTAMP
  end
end

module GL_ARB_timer_query
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetQueryObjecti64v, [ :uint, :uint, :pointer ], :void],
              [:glGetQueryObjectui64v, [ :uint, :uint, :pointer ], :void],
              [:glQueryCounter, [ :uint, :uint ], :void]
  end
end

