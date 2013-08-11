module Roglew
  module GL
    TIME_ELAPSED ||= 0x88BF
    TIMESTAMP    ||= 0x8E28
  end
end

module GL_ARB_timer_query
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glGetQueryObjecti64v, [ :uint, :uint, :pointer ], :void],
        [:glGetQueryObjectui64v, [ :uint, :uint, :pointer ], :void],
        [:glQueryCounter, [ :uint, :uint ], :void]
    ]
  end
end

