module GLX_VERSION_1_2
  module RenderContext
    include Roglew::GLExtension

              #Display* glXGetCurrentDisplay (void)
    functions [:glXGetCurrentDisplay, [], :pointer]
  end
end