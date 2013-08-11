module Roglew
  module GLX
    include GL::Native

    USE_GL           = 1
    BUFFER_SIZE      = 2
    LEVEL            = 3
    RGBA             = 4
    DOUBLEBUFFER     = 5
    STEREO           = 6
    AUX_BUFFERS      = 7
    RED_SIZE         = 8
    GREEN_SIZE       = 9
    BLUE_SIZE        = 10
    ALPHA_SIZE       = 11
    DEPTH_SIZE       = 12
    STENCIL_SIZE     = 13
    ACCUM_RED_SIZE   = 14
    ACCUM_GREEN_SIZE = 15
    ACCUM_BLUE_SIZE  = 16
    ACCUM_ALPHA_SIZE = 17
    BAD_SCREEN       = 1
    BAD_ATTRIBUTE    = 2
    NO_EXTENSION     = 3
    BAD_VISUAL       = 4
    BAD_CONTEXT      = 5
    BAD_VALUE        = 6
    BAD_ENUM         = 7

    class XVisualInfo < FFI::Struct
      layout :visual,        :pointer,
             :visualid,      :uint,
             :screen,        :int ,
             :depth,         :int,
             :class,         :int,
             :red_mask,      :uint,
             :green_mask,    :uint,
             :blue_mask,     :uint,
             :colormap_size, :int,
             :bits_per_rgb,  :int
    end

    [
      #XVisualInfo* glXChooseVisual (Display *dpy, int screen, int *attribList)
      [ :ChooseVisual, [:pointer, :int, :pointer], XVisualInfo.ptr ],

      #void glXCopyContext (Display *dpy, GLXContext src, GLXContext dst, GLulong mask)
      [ :CopyContext, [:pointer, :pointer, :pointer, :uint], :void ],

      #GLXContext glXCreateContext (Display *dpy, XVisualInfo *vis, GLXContext shareList, Bool direct)
      [ :CreateContext, [:pointer, XVisualInfo.ptr, :pointer, :bool], :pointer ],

      #GLXPixmap glXCreateGLXPixmap (Display *dpy, XVisualInfo *vis, Pixmap pixmap)
      [ :CreateGLXPixmap, [:pointer, XVisualInfo.ptr, :int], :int ],

      #void glXDestroyContext (Display *dpy, GLXContext ctx)
      [ :DestroyContext, [:pointer, :pointer], :void ],

      #void glXDestroyGLXPixmap (Display *dpy, GLXPixmap pix)
      [ :DestroyGLXPixmap, [:pointer, :int], :void ],

      #int glXGetConfig (Display *dpy, XVisualInfo *vis, int attrib, int *value)
      [ :GetConfig, [:pointer, XVisualInfo.ptr, :int, :pointer], :int ],

      #GLXContext glXGetCurrentContext (void)
      [ :GetCurrentContext, [], :pointer ],

      #GLXDrawable glXGetCurrentDrawable (void)
      [ :GetCurrentDrawable, [], :int ],

      #Bool glXIsDirect (Display *dpy, GLXContext ctx)
      [ :IsDirect, [:pointer, :pointer], :bool ],

      #Bool glXMakeCurrent (Display *dpy, GLXDrawable drawable, GLXContext ctx)
      [ :MakeCurrent, [:pointer, :int, :pointer], :bool ],

      #Bool glXQueryExtension (Display *dpy, int *errorBase, int *eventBase)
      [ :QueryExtension, [:pointer, :pointer, :pointer], :bool ],

      #Bool glXQueryVersion (Display *dpy, int *major, int *minor)
      [ :QueryVersion, [:pointer, :pointer, :pointer], :bool ],

      #void glXSwapBuffers (Display *dpy, GLXDrawable drawable)
      [ :SwapBuffers, [:pointer, :int], :void ],

      #void glXUseXFont (Font font, int first, int count, int listBase)
      [ :UseXFont, [:int, :int, :int, :int], :void ],

      #void glXWaitGL (void)
      [ :WaitGL, [], :void ],

      #void glXWaitX (void)
      [ :WaitX, [], :void ]
    ].each do |args|
      args[1, 0] = "glX#{args[0]}"
      RenderHandle.send(:def_function, args[1], attach_function(*args))
    end

    def delete_context(dpy, ctx)
      DestroyContext(dpy, ctx)
    end
  end
end