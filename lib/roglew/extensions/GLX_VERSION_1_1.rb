module Roglew
  module GLX
    VENDOR     = 0x1
    VERSION    = 0x2
    EXTENSIONS = 0x3
  end
end

module GLX_VERSION_1_1
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions :ffi, [
      #const char* glXGetClientString (Display *dpy, int name)
      [ :glXGetClientString, [:pointer, :int], :string ],

      #const char* glXQueryExtensionsString (Display *dpy, int screen)
      [ :glXQueryExtensionsString, [:pointer, :int], :string ],

      #const char* glXQueryServerString (Display *dpy, int screen, int name)
      [ :glXQueryServerString, [:pointer, :int, :int], :string ]
    ]
  end
end