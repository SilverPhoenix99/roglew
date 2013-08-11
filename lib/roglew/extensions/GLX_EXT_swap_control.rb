module Roglew
  module GLX
    SWAP_INTERVAL_EXT     ||= 0x20F1
    MAX_SWAP_INTERVAL_EXT ||= 0x20F2

  end
end

module GLX_EXT_swap_control
  module RenderHandle
    include Roglew::RenderHandleExtension


    functions [
      #void glXSwapIntervalEXT(Display* dpy, GLXDrawable drawable, int interval)
      [:glXSwapIntervalEXT, [:pointer, :int, :int], :void]
    ]
  end
end