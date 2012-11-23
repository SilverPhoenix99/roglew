module GLX_SGI_video_sync
  module RenderContext
    include Roglew::GLExtension

              #int glXGetVideoSyncSGI(unsigned int* count)
    functions [:glXGetVideoSyncSGI, [:pointer], :int],

              #int glXWaitVideoSyncSGI(int divisor, int remainder, unsigned int* count)
              [:glXWaitVideoSyncSGI, [:int, :int, :pointer], :int]
  end
end