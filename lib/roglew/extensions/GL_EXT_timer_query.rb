module Roglew
  module GL
    TIME_ELAPSED_EXT ||= 0x88BF
  end
end

module GL_EXT_timer_query
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glGetQueryObjecti64vEXT, [ :uint, :uint, :pointer ], :void],
        [:glGetQueryObjectui64vEXT, [ :uint, :uint, :pointer ], :void]
    ]
  end
end

