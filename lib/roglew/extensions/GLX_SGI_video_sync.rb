module GLX_SGI_video_sync
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #int glXGetVideoSyncSGI(unsigned int* count)
      [:glXGetVideoSyncSGI, [:pointer], :int],

      #int glXWaitVideoSyncSGI(int divisor, int remainder, unsigned int* count)
      [:glXWaitVideoSyncSGI, [:int, :int, :pointer], :int]
    ]
  end
end