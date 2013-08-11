module GLX_MESA_pixmap_colormap
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #GLXPixmap glXCreateGLXPixmapMESA(Display* dpy, XVisualInfo *visual, Pixmap pixmap, Colormap cmap)
      [:glXCreateGLXPixmapMESA, [:pointer, Roglew::GLX::XVisualInfo.ptr, :int, :int], :int]
    ]
  end
end