module Roglew
  module GL
    INT_SAMPLER_1D_ARRAY_EXT          = 0x8DCE
    INT_SAMPLER_1D_EXT                = 0x8DC9
    INT_SAMPLER_2D_ARRAY_EXT          = 0x8DCF
    INT_SAMPLER_2D_EXT                = 0x8DCA
    INT_SAMPLER_2D_RECT_EXT           = 0x8DCD
    INT_SAMPLER_3D_EXT                = 0x8DCB
    INT_SAMPLER_BUFFER_EXT            = 0x8DD0
    INT_SAMPLER_CUBE_EXT              = 0x8DCC
    SAMPLER_1D_ARRAY_EXT              = 0x8DC0
    SAMPLER_1D_ARRAY_SHADOW_EXT       = 0x8DC3
    SAMPLER_2D_ARRAY_EXT              = 0x8DC1
    SAMPLER_2D_ARRAY_SHADOW_EXT       = 0x8DC4
    SAMPLER_BUFFER_EXT                = 0x8DC2
    SAMPLER_CUBE_SHADOW_EXT           = 0x8DC5
    UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT = 0x8DD6
    UNSIGNED_INT_SAMPLER_1D_EXT       = 0x8DD1
    UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT = 0x8DD7
    UNSIGNED_INT_SAMPLER_2D_EXT       = 0x8DD2
    UNSIGNED_INT_SAMPLER_2D_RECT_EXT  = 0x8DD5
    UNSIGNED_INT_SAMPLER_3D_EXT       = 0x8DD3
    UNSIGNED_INT_SAMPLER_BUFFER_EXT   = 0x8DD8
    UNSIGNED_INT_SAMPLER_CUBE_EXT     = 0x8DD4
    UNSIGNED_INT_VEC2_EXT             = 0x8DC6
    UNSIGNED_INT_VEC3_EXT             = 0x8DC7
    UNSIGNED_INT_VEC4_EXT             = 0x8DC8
    VERTEX_ATTRIB_ARRAY_INTEGER_EXT   = 0x88FD
  end
end

module GL_EXT_gpu_shader4
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindFragDataLocationEXT, [ :uint, :uint, :string ], :void],
              [:glGetFragDataLocationEXT, [ :uint, :string ], :int],
              [:glGetUniformuivEXT, [ :uint, :int, :pointer ], :void],
              [:glGetVertexAttribIivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetVertexAttribIuivEXT, [ :uint, :uint, :pointer ], :void],
              [:glUniform1uiEXT, [ :int, :uint ], :void],
              [:glUniform1uivEXT, [ :int, :int, :pointer ], :void],
              [:glUniform2uiEXT, [ :int, :uint, :uint ], :void],
              [:glUniform2uivEXT, [ :int, :int, :pointer ], :void],
              [:glUniform3uiEXT, [ :int, :uint, :uint, :uint ], :void],
              [:glUniform3uivEXT, [ :int, :int, :pointer ], :void],
              [:glUniform4uiEXT, [ :int, :uint, :uint, :uint, :uint ], :void],
              [:glUniform4uivEXT, [ :int, :int, :pointer ], :void],
              [:glVertexAttribI1iEXT, [ :uint, :int ], :void],
              [:glVertexAttribI1ivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI1uiEXT, [ :uint, :uint ], :void],
              [:glVertexAttribI1uivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI2iEXT, [ :uint, :int, :int ], :void],
              [:glVertexAttribI2ivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI2uiEXT, [ :uint, :uint, :uint ], :void],
              [:glVertexAttribI2uivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI3iEXT, [ :uint, :int, :int, :int ], :void],
              [:glVertexAttribI3ivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI3uiEXT, [ :uint, :uint, :uint, :uint ], :void],
              [:glVertexAttribI3uivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI4bvEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI4iEXT, [ :uint, :int, :int, :int, :int ], :void],
              [:glVertexAttribI4ivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI4svEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI4ubvEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI4uiEXT, [ :uint, :uint, :uint, :uint, :uint ], :void],
              [:glVertexAttribI4uivEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribI4usvEXT, [ :uint, :pointer ], :void],
              [:glVertexAttribIPointerEXT, [ :uint, :int, :uint, :int, :pointer ], :void]
  end
end

