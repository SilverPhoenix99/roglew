module Roglew
  module GLX
    SWAP_INTERVAL_EXT     ||= 0x20F1
    MAX_SWAP_INTERVAL_EXT ||= 0x20F2

  end
end

module GLX_EXT_swap_control
  module RenderContext
    include Roglew::GLExtension

              #void glXSwapIntervalEXT(Display* dpy, GLXDrawable drawable, int interval)
    functions [:glXSwapIntervalEXT, [:pointer, :int, :int], :void]
  end
end