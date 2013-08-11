module WGL_NV_copy_image
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglCopyImageSubDataNV, [ :pointer, :uint, :uint, :int, :int, :int, :int, :pointer, :uint, :uint, :int, :int, :int, :int, :int, :int, :int ], :bool ]
    ]
  end
end