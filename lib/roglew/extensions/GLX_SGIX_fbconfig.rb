module Roglew
  module GLX
    WINDOW_BIT_SGIX       ||= 0x00000001
    RGBA_BIT_SGIX         ||= 0x00000001
    PIXMAP_BIT_SGIX       ||= 0x00000002
    COLOR_INDEX_BIT_SGIX  ||= 0x00000002
    SCREEN_EXT            ||= 0x800C
    DRAWABLE_TYPE_SGIX    ||= 0x8010
    RENDER_TYPE_SGIX      ||= 0x8011
    X_RENDERABLE_SGIX     ||= 0x8012
    FBCONFIG_ID_SGIX      ||= 0x8013
    RGBA_TYPE_SGIX        ||= 0x8014
    COLOR_INDEX_TYPE_SGIX ||= 0x8015
  end
end

module GLX_SGIX_fbconfig
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #GLXFBConfigSGIX* glXChooseFBConfigSGIX(Display *dpy, int screen, const int *attrib_list, int *nelements)
      [:glXChooseFBConfigSGIX, [:pointer, :int, :pointer, :pointer], :pointer],

      #GLXContext glXCreateContextWithConfigSGIX(
      #   Display* dpy,
      #   GLXFBConfig config,
      #   int render_type,
      #   GLXContext share_list,
      #   Bool direct)
      [:glXCreateContextWithConfigSGIX, [:pointer, :pointer, :int, :pointer, :bool], :pointer],

      #GLXPixmap glXCreateGLXPixmapWithConfigSGIX(Display* dpy, GLXFBConfig config, Pixmap pixmap)
      [:glXCreateGLXPixmapWithConfigSGIX, [:pointer, :pointer, :int], :int],

      #int glXGetFBConfigAttribSGIX(Display* dpy, GLXFBConfigSGIX config, int attribute, int *value)
      [:glXGetFBConfigAttribSGIX, [:pointer, :pointer, :int, :pointer], :int],

      #GLXFBConfigSGIX glXGetFBConfigFromVisualSGIX(Display* dpy, XVisualInfo *vis)
      [:glXGetFBConfigFromVisualSGIX, [:pointer, Roglew::GLX::XVisualInfo.ptr], :pointer],

      #XVisualInfo* glXGetVisualFromFBConfigSGIX(Display *dpy, GLXFBConfig config)
      [:glXGetVisualFromFBConfigSGIX, [:pointer, :pointer], Roglew::GLX::XVisualInfo.ptr]
    ]
  end
end