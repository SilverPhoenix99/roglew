module Roglew
  module GLX
    #void ( * glXGetProcAddressARB (const GLubyte *procName)) (void)
    func = attach_function :GetProcAddressARB, :glXGetProcAddressARB, [:string], :pointer
    RenderContext.send(:define_method, :glXGetProcAddressARB) { |*parms| func.call(*parms) }
  end
end