module GLX_NV_vertex_array_range
  module RenderContext
    include Roglew::GLExtension

              #void * glXAllocateMemoryNV(GLsizei size, GLfloat readFrequency, GLfloat writeFrequency, GLfloat priority)
    functions [:glXAllocateMemoryNV, [:int, :float, :float, :float], :pointer],

              #void glXFreeMemoryNV(void *pointer)
              [:glXFreeMemoryNV, [:pointer], :pointer]
  end
end