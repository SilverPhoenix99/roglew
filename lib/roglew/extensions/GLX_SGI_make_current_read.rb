module GLX_SGI_make_current_read
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #GLXDrawable glXGetCurrentReadDrawableSGI(void)
      [:glXGetCurrentReadDrawableSGI, [], :int],

      #Bool glXMakeCurrentReadSGI(Display* dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx)
      [:glXMakeCurrentReadSGI, [:pointer, :int, :int, :pointer], :bool]
    ]
  end
end