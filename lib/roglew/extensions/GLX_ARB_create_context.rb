module Roglew
  module GLX
    CONTEXT_DEBUG_BIT_ARB              ||= 0x0001
    CONTEXT_FORWARD_COMPATIBLE_BIT_ARB ||= 0x0002
    CONTEXT_MAJOR_VERSION_ARB          ||= 0x2091
    CONTEXT_MINOR_VERSION_ARB          ||= 0x2092
    CONTEXT_FLAGS_ARB                  ||= 0x2094
  end
end

module GLX_ARB_create_context
  module RenderContext
    include Roglew::GLExtension

              #GLXContext glXCreateContextAttribsARB(
              #   Display* dpy,
              #   GLXFBConfig config,
              #   GLXContext share_context,
              #   Bool direct,
              #   const int *attrib_list)
    functions [:glXCreateContextAttribsARB, [:pointer, :pointer, :pointer, :bool, :pointer], :pointer]
  end
end