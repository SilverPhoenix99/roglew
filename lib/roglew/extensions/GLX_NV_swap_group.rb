module GLX_NV_swap_group
  module RenderContext
    include Roglew::GLExtension

              #Bool glXBindSwapBarrierNV(Display* dpy, GLuint group, GLuint barrier)
    functions [:glXBindSwapBarrierNV, [:pointer, :uint, :uint], :Bool],

              #Bool glXJoinSwapGroupNV(Display* dpy, GLXDrawable drawable, GLuint group)
              [:glXJoinSwapGroupNV, [:pointer, :int, :uint], :Bool],

              #Bool glXQueryFrameCountNV(Display* dpy, int screen, GLuint *count)
              [:glXQueryFrameCountNV, [:pointer, :int, :pointer], :Bool],

              #Bool glXQueryMaxSwapGroupsNV(Display* dpy, int screen, GLuint *maxGroups, GLuint *maxBarriers)
              [:glXQueryMaxSwapGroupsNV, [:pointer, :int, :pointer, :pointer], :Bool],

              #Bool glXQuerySwapGroupNV(Display* dpy, GLXDrawable drawable, GLuint *group, GLuint *barrier)
              [:glXQuerySwapGroupNV, [:pointer, :pointer, :int, :pointer, :pointer], :Bool],

              #Bool glXResetFrameCountNV(Display* dpy, int screen)
              [:glXResetFrameCountNV, [:pointer, :int], :Bool]
  end
end