module Roglew
  module GL
    SYNC_CL_EVENT_ARB          = 0x8240
    SYNC_CL_EVENT_COMPLETE_ARB = 0x8241
  end
end

module GL_ARB_cl_event
  module RenderContext
    include GLExtension

    # TODO
    # typedef struct _cl_context *cl_context;
    # typedef struct _cl_event *cl_event;

    functions [:glCreateSyncFromCLeventARB, [ :pointer, :pointer, :uint ], :pointer]
  end
end