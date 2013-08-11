module GLX_VERSION_1_2
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #Display* glXGetCurrentDisplay (void)
      [:glXGetCurrentDisplay, [], :pointer]
    ]
  end
end