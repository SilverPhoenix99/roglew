module WGL_OML_sync_control
  module RenderContext
    include Roglew::GLExtension

    functions [:wglGetMscRateOML, [ :pointer, :pointer, :pointer ], :bool ],
              [:wglGetSyncValuesOML, [ :pointer, :pointer, :pointer, :pointer ], :bool ],
              [:wglSwapBuffersMscOML, [ :pointer, :int64, :int64, :int64 ], :int64 ],
              [:wglSwapLayerBuffersMscOML, [ :pointer, :int, :int64, :int64, :int64 ], :int64 ],
              [:wglWaitForMscOML, [ :pointer, :int64, :int64, :int64, :pointer, :pointer, :pointer ], :bool ],
              [:wglWaitForSbcOML, [ :pointer, :int64, :pointer, :pointer, :pointer ], :bool ]
  end
end