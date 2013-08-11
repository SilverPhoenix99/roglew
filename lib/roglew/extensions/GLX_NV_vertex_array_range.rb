module GLX_NV_vertex_array_range
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #void * glXAllocateMemoryNV(GLsizei size, GLfloat readFrequency, GLfloat writeFrequency, GLfloat priority)
      [:glXAllocateMemoryNV, [:int, :float, :float, :float], :pointer],

      #void glXFreeMemoryNV(void *pointer)
      [:glXFreeMemoryNV, [:pointer], :pointer]
    ]
  end
end