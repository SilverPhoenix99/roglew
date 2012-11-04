module WGL_EXT_display_color_table
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBindDisplayColorTableEXT, [ :ushort ], :uchar ],
              [:wglCreateDisplayColorTableEXT, [ :ushort ], :uchar ],
              [:wglDestroyDisplayColorTableEXT, [ :ushort ], :void ],
              [:wglLoadDisplayColorTableEXT, [ :pointer, :uint ], :uchar ]
  end
end