module WGL_NV_vertex_array_range
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:wglAllocateMemoryNV, [ :int, :float, :float, :float ], :pointer ],
      [:wglFreeMemoryNV, [ :pointer ], :void ]
    ]
  end
end