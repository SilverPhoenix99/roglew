module Roglew
  module GLX
    ACCUM_BUFFER_BIT        ||= 0x00000080
    AUX_BUFFERS_BIT         ||= 0x00000010
    BACK_LEFT_BUFFER_BIT    ||= 0x00000004
    BACK_RIGHT_BUFFER_BIT   ||= 0x00000008
    COLOR_INDEX_BIT         ||= 0x00000002
    COLOR_INDEX_TYPE        ||= 0x8015
    CONFIG_CAVEAT           ||= 0x20
    DAMAGED                 ||= 0x8020
    DEPTH_BUFFER_BIT        ||= 0x00000020
    DIRECT_COLOR            ||= 0x8003
    DONT_CARE               ||= 0xFFFFFFFF
    DRAWABLE_TYPE           ||= 0x8010
    EVENT_MASK              ||= 0x801F
    FBCONFIG_ID             ||= 0x8013
    FRONT_LEFT_BUFFER_BIT   ||= 0x00000001
    FRONT_RIGHT_BUFFER_BIT  ||= 0x00000002
    GRAY_SCALE              ||= 0x8006
    HEIGHT                  ||= 0x801E
    LARGEST_PBUFFER         ||= 0x801C
    MAX_PBUFFER_HEIGHT      ||= 0x8017
    MAX_PBUFFER_PIXELS      ||= 0x8018
    MAX_PBUFFER_WIDTH       ||= 0x8016
    NON_CONFORMANT_CONFIG   ||= 0x800D
    NONE                    ||= 0x8000
    PBUFFER                 ||= 0x8023
    PBUFFER_BIT             ||= 0x00000004
    PBUFFER_CLOBBER_MASK    ||= 0x08000000
    PBUFFER_HEIGHT          ||= 0x8040
    PBUFFER_WIDTH           ||= 0x8041
    PIXMAP_BIT              ||= 0x00000002
    PRESERVED_CONTENTS      ||= 0x801B
    PSEUDO_COLOR            ||= 0x8004
    RENDER_TYPE             ||= 0x8011
    RGBA_BIT                ||= 0x00000001
    RGBA_TYPE               ||= 0x8014
    SAVED                   ||= 0x8021
    SCREEN                  ||= 0x800C
    SLOW_CONFIG             ||= 0x8001
    STATIC_COLOR            ||= 0x8005
    STATIC_GRAY             ||= 0x8007
    STENCIL_BUFFER_BIT      ||= 0x00000040
    TRANSPARENT_ALPHA_VALUE ||= 0x28
    TRANSPARENT_BLUE_VALUE  ||= 0x27
    TRANSPARENT_GREEN_VALUE ||= 0x26
    TRANSPARENT_INDEX       ||= 0x8009
    TRANSPARENT_INDEX_VALUE ||= 0x24
    TRANSPARENT_RED_VALUE   ||= 0x25
    TRANSPARENT_RGB         ||= 0x8008
    TRANSPARENT_TYPE        ||= 0x23
    TRUE_COLOR              ||= 0x8002
    VISUAL_ID               ||= 0x800B
    WIDTH                   ||= 0x801D
    WINDOW                  ||= 0x8022
    WINDOW_BIT              ||= 0x00000001
    X_RENDERABLE            ||= 0x8012
    X_VISUAL_TYPE           ||= 0x22
  end
end

module GLX_VERSION_1_3
  module RenderContext
    include GL::Extension

              #GLXFBConfig* glXChooseFBConfig (Display *dpy, int screen, const int *attrib_list, int *nelements)
    functions [ :glXChooseFBConfig, [:pointer, :int, :pointer, :pointer], :pointer ],

              #GLXContext glXCreateNewContext (Display *dpy, GLXFBConfig config, int render_type, GLXContext share_list, Bool direct)
              [ :glXCreateNewContext, [:pointer, :pointer, :int, :pointer, :bool], :pointer ],

              #GLXPbuffer glXCreatePbuffer (Display *dpy, GLXFBConfig config, const int *attrib_list)
              [ :glXCreatePbuffer, [:pointer, :pointer, :pointer], :int ],

              #GLXPixmap glXCreatePixmap (Display *dpy, GLXFBConfig config, Pixmap pixmap, const int *attrib_list)
              [ :glXCreatePixmap, [:pointer, :pointer, :int, :pointer], :int ],

              #GLXWindow glXCreateWindow (Display *dpy, GLXFBConfig config, Window win, const int *attrib_list)
              [ :glXCreateWindow, [:pointer, :pointer, :int, :pointer], :int ],

              #void glXDestroyPbuffer (Display *dpy, GLXPbuffer pbuf)
              [ :glXDestroyPbuffer, [:pointer, :int], :void ],

              #void glXDestroyPixmap (Display *dpy, GLXPixmap pixmap)
              [ :glXDestroyPixmap, [:pointer, :int], :void ],

              #void glXDestroyWindow (Display *dpy, GLXWindow win)
              [ :glXDestroyWindow, [:pointer, :int], :void ],

              #GLXDrawable glXGetCurrentReadDrawable (void)
              [ :glXGetCurrentReadDrawable, [], :int ],

              #int glXGetFBConfigAttrib (Display *dpy, GLXFBConfig config, int attribute, int *value)
              [ :glXGetFBConfigAttrib, [:pointer, :pointer, :int, :pointer], :int ],

              #GLXFBConfig* glXGetFBConfigs (Display *dpy, int screen, int *nelements)
              [ :glXGetFBConfigs, [:pointer, :int, :pointer], :pointer ],

              #void glXGetSelectedEvent (Display *dpy, GLXDrawable draw, unsigned long *event_mask)
              [ :glXGetSelectedEvent, [:pointer, :int, :pointer], :void ],

              #XVisualInfo* glXGetVisualFromFBConfig (Display *dpy, GLXFBConfig config)
              [ :glXGetVisualFromFBConfig, [:pointer, :pointer], XVisualInfo.ptr ],

              #Bool glXMakeContextCurrent (Display *display, GLXDrawable draw, GLXDrawable read, GLXContext ctx)
              [ :glXMakeContextCurrent, [:pointer, :int, :int, :pointer], :bool ],

              #int glXQueryContext (Display *dpy, GLXContext ctx, int attribute, int *value)
              [ :glXQueryContext, [:pointer, :pointer, :int, :pointer], :int ],

              #void glXQueryDrawable (Display *dpy, GLXDrawable draw, int attribute, unsigned int *value)
              [ :glXQueryDrawable, [:pointer, :int, :int, :pointer], :void ],

              #void glXSelectEvent (Display *dpy, GLXDrawable draw, unsigned long event_mask)
              [ :glXSelectEvent, [:pointer, :int, :uint], :void ]
  end
end