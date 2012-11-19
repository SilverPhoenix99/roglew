module Roglew
  module GLX
    SAMPLE_BUFFERS ||= 100000
    SAMPLES        ||= 100001

    #void ( * glXGetProcAddress (const GLubyte *procName)) (void)
    func = attach_function :GetProcAddress, :glXGetProcAddress, [:string], :pointer
    RenderContext.send(:define_method, :glXGetProcAddress) { |*parms| func.call(*parms) }
  end
end