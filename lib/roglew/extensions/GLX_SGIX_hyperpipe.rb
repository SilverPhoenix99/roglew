module Roglew
  module GLX
    HYPERPIPE_DISPLAY_PIPE_SGIX     ||= 0x00000001
    PIPE_RECT_SGIX                  ||= 0x00000001
    PIPE_RECT_LIMITS_SGIX           ||= 0x00000002
    HYPERPIPE_RENDER_PIPE_SGIX      ||= 0x00000002
    HYPERPIPE_STEREO_SGIX           ||= 0x00000003
    HYPERPIPE_PIXEL_AVERAGE_SGIX    ||= 0x00000004
    HYPERPIPE_PIPE_NAME_LENGTH_SGIX ||= 80
    BAD_HYPERPIPE_CONFIG_SGIX       ||= 91
    BAD_HYPERPIPE_SGIX              ||= 92
    HYPERPIPE_ID_SGIX               ||= 0x8030
    COLOR_INDEX_TYPE_SGIX           ||= 0x8015

    class GLXHyperpipeNetworkSGIX < FFI::Struct
      layout :pipeName,  [:char, GLX::HYPERPIPE_PIPE_NAME_LENGTH_SGIX],
             :networkId, :int
    end

    class GLXHyperpipeConfigSGIX < FFI::Struct
      layout :pipeName,          [:char, GLX::HYPERPIPE_PIPE_NAME_LENGTH_SGIX],
             :channel,           :int,
             :participationType, :uint,
             :timeSlice,         :int
    end
  end
end

module GLX_SGIX_hyperpipe
  module RenderContext
    include Roglew::GLExtension

              #int glXBindHyperpipeSGIX(Display *dpy, int hpId)
    functions [:glXBindHyperpipeSGIX, [:pointer, :int], :int],

              #int glXDestroyHyperpipeConfigSGIX(Display *dpy, int hpId)
              [:glXDestroyHyperpipeConfigSGIX, [:pointer, :int], :int],

              #int glXHyperpipeAttribSGIX(Display *dpy, int timeSlice, int attrib, int size, void *attribList)
              [:glXHyperpipeAttribSGIX, [:pointer, :int, :int, :int, :pointer], :int],

              #int glXHyperpipeConfigSGIX(Display *dpy, int networkId, int npipes, GLXHyperpipeConfigSGIX *cfg, int *hpId)
              [:glXHyperpipeConfigSGIX, [:pointer, :int, :int, Roglew::GLX::GLXHyperpipeConfigSGIX.ptr, :pointer], :int],

              #int glXQueryHyperpipeAttribSGIX(Display *dpy, int timeSlice, int attrib, int size, void *returnAttribList)
              [:glXQueryHyperpipeAttribSGIX, [:pointer, :int, :int, :int, :pointer], :int],

              #int glXQueryHyperpipeBestAttribSGIX(
              #   Display *dpy,
              #   int timeSlice,
              #   int attrib,
              #   int size,
              #   void *attribList,
              #   void *returnAttribList)
              [:glXQueryHyperpipeBestAttribSGIX, [:pointer, :int, :int, :int, :pointer, :pointer], :int],

              #GLXHyperpipeConfigSGIX * glXQueryHyperpipeConfigSGIX(Display *dpy, int hpId, int *npipes)
              [:glXQueryHyperpipeConfigSGIX, [:pointer, :int, :pointer], Roglew::GLX::GLXHyperpipeConfigSGIX.ptr],

              #GLXHyperpipeNetworkSGIX * glXQueryHyperpipeNetworkSGIX(Display *dpy, int *npipes)
              [:glXQueryHyperpipeNetworkSGIX, [:pointer, :pointer], Roglew::GLX::GLXHyperpipeNetworkSGIX.ptr]
  end
end