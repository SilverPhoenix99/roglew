module WGL_EXT_swap_control
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetSwapIntervalEXT, [ ], :int ],
              [:wglSwapIntervalEXT, [ :int ], :bool ]
  end
end