module WGL_NV_vertex_array_range
  module RenderContext
    include Roglew::GLExtension

    functions [:wglAllocateMemoryNV, [ :int, :float, :float, :float ], :pointer ],
              [:wglFreeMemoryNV, [ :pointer ], :void ]
  end
end