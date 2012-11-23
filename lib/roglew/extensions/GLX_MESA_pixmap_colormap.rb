module GLX_MESA_pixmap_colormap
  module RenderContext
    include Roglew::GLExtension

              #GLXPixmap glXCreateGLXPixmapMESA(Display* dpy, XVisualInfo *visual, Pixmap pixmap, Colormap cmap)
    functions [:glXCreateGLXPixmapMESA, [:pointer, Roglew::GLX::XVisualInfo.ptr, :int, :int], :int]
  end
end