module WGL_EXT_display_color_table
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglBindDisplayColorTableEXT, [ :ushort ], :uchar ],
      [:wglCreateDisplayColorTableEXT, [ :ushort ], :uchar ],
      [:wglDestroyDisplayColorTableEXT, [ :ushort ], :void ],
      [:wglLoadDisplayColorTableEXT, [ :pointer, :uint ], :uchar ]
    ]
  end
end