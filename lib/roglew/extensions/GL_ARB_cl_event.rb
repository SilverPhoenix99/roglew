module Roglew
  module GL
    SYNC_CL_EVENT_ARB          ||= 0x8240
    SYNC_CL_EVENT_COMPLETE_ARB ||= 0x8241
  end
end

module GL_ARB_cl_event
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glCreateSyncFromCLeventARB, [ :pointer, :pointer, :uint ], :pointer]
    ]
  end
end