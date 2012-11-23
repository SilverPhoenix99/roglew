module Roglew
  module GLX
    SHARE_CONTEXT_EXT ||= 0x800A
    VISUAL_ID_EXT     ||= 0x800B
    SCREEN_EXT        ||= 0x800C
  end
end

module GLX_EXT_import_context
  module RenderContext
    include Roglew::GLExtension

              #void glXFreeContextEXT(Display* dpy, GLXContext context)
    functions [:glXFreeContextEXT, [:pointer, :pointer], :void],

              #GLXContextID glXGetContextIDEXT(const GLXContext context)
              [:glXGetContextIDEXT, [:pointer], :int],

              #GLXContext glXImportContextEXT(Display* dpy, GLXContextID contextID)
              [:glXImportContextEXT, [:pointer, :int], :pointer],

              #int glXQueryContextInfoEXT(Display* dpy, GLXContext context, int attribute, int *value)
              [:glXQueryContextInfoEXT, [:pointer, :pointer, :int, :pointer], :int]
  end
end