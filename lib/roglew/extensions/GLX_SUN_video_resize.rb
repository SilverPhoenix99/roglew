module Roglew
  module GL
    VIDEO_RESIZE_COMPENSATION_SUN ||= 0x85CD
  end

  module GLX
    VIDEO_RESIZE_SUN ||= 0x8171
  end
end

module GLX_SUN_video_resize
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #int glXGetVideoResizeSUN(Display* display, GLXDrawable window, float* factor)
      [:glXGetVideoResizeSUN, [:pointer, :int, :pointer], :int],

      #int glXVideoResizeSUN(Display* display, GLXDrawable window, float factor)
      [:glXVideoResizeSUN, [:pointer, :int, :float], :int]
    ]
  end
end