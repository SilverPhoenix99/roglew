module GL_ATI_vertex_attrib_array_object
  module RenderContext
    include GLExtension

    functions [:glGetVertexAttribArrayObjectfvATI, [ :uint, :uint, :pointer ], :void],
              [:glGetVertexAttribArrayObjectivATI, [ :uint, :uint, :pointer ], :void],
              [:glVertexAttribArrayObjectATI, [ :uint, :int, :uint, :uchar, :int, :uint, :uint ], :void]
  end
end