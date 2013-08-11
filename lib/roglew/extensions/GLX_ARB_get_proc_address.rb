module GLX_ARB_get_proc_address
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions :ffi, [
        #void ( * glXGetProcAddressARB (const GLubyte *procName)) (void)
        [:glXGetProcAddressARB, [:string], :pointer]
    ]
  end
end