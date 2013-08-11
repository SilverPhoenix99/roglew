module GLX_OML_sync_control
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #Bool glXGetMscRateOML(Display* dpy, GLXDrawable drawable, int32_t* numerator, int32_t* denominator)
      [:glXGetMscRateOML, [:pointer, :int, :pointer, :pointer], :bool],

      #Bool glXGetSyncValuesOML(Display* dpy, GLXDrawable drawable, int64_t* ust, int64_t* msc, int64_t* sbc)
      [:glXGetSyncValuesOML, [:pointer, :int, :pointer, :pointer, :pointer], :bool],

      #int64_t glXSwapBuffersMscOML(
      #   Display* dpy,
      #   GLXDrawable drawable,
      #   int64_t target_msc,
      #   int64_t divisor,
      #   int64_t remainder)
      [:glXSwapBuffersMscOML, [:pointer, :int, :int64], :int64, :int64, :int64],

      #Bool glXWaitForMscOML(
      #   Display* dpy,
      #   GLXDrawable drawable,
      #   int64_t target_msc,
      #   int64_t divisor,
      #   int64_t remainder,
      #   int64_t* ust,
      #   int64_t* msc,
      #   int64_t* sbc)
      [:glXWaitForMscOML, [:pointer, :int, :int64, :int64, :int64, :pointer, :pointer, :pointer], :bool],

      #Bool glXWaitForSbcOML(
      #   Display* dpy,
      #   GLXDrawable drawable,
      #   int64_t target_sbc,
      #   int64_t* ust,
      #   int64_t* msc,
      #   int64_t* sbc)
      [:glXWaitForSbcOML, [:pointer, :int, :int64, :pointer, :pointer, :pointer], :bool]
    ]
  end
end