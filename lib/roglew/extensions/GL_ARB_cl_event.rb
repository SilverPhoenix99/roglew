module Roglew
  module GL
    SYNC_CL_EVENT_ARB          = 0x8240 unless const_defined? :SYNC_CL_EVENT_ARB
    SYNC_CL_EVENT_COMPLETE_ARB = 0x8241 unless const_defined? :SYNC_CL_EVENT_COMPLETE_ARB
  end
end

module GL_ARB_cl_event
  module RenderContext
    include Roglew::GLExtension

    functions [:glCreateSyncFromCLeventARB, [ :pointer, :pointer, :uint ], :pointer]
  end
end