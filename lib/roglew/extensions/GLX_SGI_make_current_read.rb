module GLX_SGI_make_current_read
  module RenderContext
    include Roglew::GLExtension

              #GLXDrawable glXGetCurrentReadDrawableSGI(void)
    functions [:glXGetCurrentReadDrawableSGI, [], :int],

              #Bool glXMakeCurrentReadSGI(Display* dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx)
              [:glXMakeCurrentReadSGI, [:pointer, :int, :int, :pointer], :bool]
  end
end