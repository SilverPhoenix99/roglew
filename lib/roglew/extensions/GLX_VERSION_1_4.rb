module Roglew
  module GLX
    SAMPLE_BUFFERS ||= 100000
    SAMPLES        ||= 100001
  end
end

module GLX_VERSION_1_4
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions :ffi, [
        #void ( * glXGetProcAddress (const GLubyte *procName)) (void)
        [:glXGetProcAddress, [:string], :pointer]
    ]
  end
end