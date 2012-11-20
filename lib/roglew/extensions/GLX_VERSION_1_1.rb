module Roglew
  module GLX
    VENDOR     = 0x1
    VERSION    = 0x2
    EXTENSIONS = 0x3

	[
      #const char* glXGetClientString (Display *dpy, int name)
      [ :GetClientString, [:pointer, :int], :string ],

      #const char* glXQueryExtensionsString (Display *dpy, int screen)
      [ :QueryExtensionsString, [:pointer, :int], :string ],

      #const char* glXQueryServerString (Display *dpy, int screen, int name)
      [ :QueryServerString, [:pointer, :int, :int], :string ]
	].each do |args|
      args[1, 0] = "glX#{args[0]}"
      func = attach_function *args
      RenderContext.send(:define_method, args[1]) { |*parms| func.call(*parms) }
    end
  end
end