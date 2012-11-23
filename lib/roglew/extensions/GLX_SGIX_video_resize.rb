module Roglew
  module GLX
    SYNC_FRAME_SGIX ||= 0x00000000
    SYNC_SWAP_SGIX  ||= 0x00000001
  end
end

module GLX_SGIX_video_resize
  module RenderContext
    include Roglew::GLExtension

              #int glXBindChannelToWindowSGIX(Display* display, int screen, int channel, Window window)
    functions [:glXBindChannelToWindowSGIX, [:pointer, :int, :int, :int], :int],

              #int glXChannelRectSGIX(Display* display, int screen, int channel, int x, int y, int w, int h)
              [:glXChannelRectSGIX, [:pointer, :int, :int, :int, :int, :int, :int], :int],

              #int glXChannelRectSyncSGIX(Display* display, int screen, int channel, GLenum synctype)
              [:glXChannelRectSyncSGIX, [:pointer, :int, :int, :uint], :int],

              #int glXQueryChannelDeltasSGIX(Display* display, int screen, int channel, int *x, int *y, int *w, int *h)
              [:glXQueryChannelDeltasSGIX, [:pointer, :int, :int, :pointer, :pointer, :pointer, :pointer], :int],

              #int glXQueryChannelRectSGIX(Display* display, int screen, int channel, int *dx, int *dy, int *dw, int *dh)
              [:glXQueryChannelRectSGIX, [:pointer, :int, :int, :pointer, :pointer, :pointer, :pointer], :int]
  end
end