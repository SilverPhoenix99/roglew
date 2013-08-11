module WGL_EXT_swap_control
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglGetSwapIntervalEXT, [ ], :int ],
      [:wglSwapIntervalEXT, [ :int ], :bool ]
    ]
  end
end