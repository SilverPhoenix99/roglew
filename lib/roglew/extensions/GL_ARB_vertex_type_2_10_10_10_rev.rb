module Roglew
  module GL
    INT_2_10_10_10_REV          ||= 0x8D9F
    UNSIGNED_INT_2_10_10_10_REV ||= 0x8368
  end
end

module GL_ARB_vertex_type_2_10_10_10_rev
  module RenderContext
    include Roglew::GLExtension

    functions [:glColorP3ui, [ :uint, :uint ], :void],
              [:glColorP3uiv, [ :uint, :pointer ], :void],
              [:glColorP4ui, [ :uint, :uint ], :void],
              [:glColorP4uiv, [ :uint, :pointer ], :void],
              [:glMultiTexCoordP1ui, [ :uint, :uint, :uint ], :void],
              [:glMultiTexCoordP1uiv, [ :uint, :uint, :pointer ], :void],
              [:glMultiTexCoordP2ui, [ :uint, :uint, :uint ], :void],
              [:glMultiTexCoordP2uiv, [ :uint, :uint, :pointer ], :void],
              [:glMultiTexCoordP3ui, [ :uint, :uint, :uint ], :void],
              [:glMultiTexCoordP3uiv, [ :uint, :uint, :pointer ], :void],
              [:glMultiTexCoordP4ui, [ :uint, :uint, :uint ], :void],
              [:glMultiTexCoordP4uiv, [ :uint, :uint, :pointer ], :void],
              [:glNormalP3ui, [ :uint, :uint ], :void],
              [:glNormalP3uiv, [ :uint, :pointer ], :void],
              [:glSecondaryColorP3ui, [ :uint, :uint ], :void],
              [:glSecondaryColorP3uiv, [ :uint, :pointer ], :void],
              [:glTexCoordP1ui, [ :uint, :uint ], :void],
              [:glTexCoordP1uiv, [ :uint, :pointer ], :void],
              [:glTexCoordP2ui, [ :uint, :uint ], :void],
              [:glTexCoordP2uiv, [ :uint, :pointer ], :void],
              [:glTexCoordP3ui, [ :uint, :uint ], :void],
              [:glTexCoordP3uiv, [ :uint, :pointer ], :void],
              [:glTexCoordP4ui, [ :uint, :uint ], :void],
              [:glTexCoordP4uiv, [ :uint, :pointer ], :void],
              [:glVertexAttribP1ui, [ :uint, :uint, :uchar, :uint ], :void],
              [:glVertexAttribP1uiv, [ :uint, :uint, :uchar, :pointer ], :void],
              [:glVertexAttribP2ui, [ :uint, :uint, :uchar, :uint ], :void],
              [:glVertexAttribP2uiv, [ :uint, :uint, :uchar, :pointer ], :void],
              [:glVertexAttribP3ui, [ :uint, :uint, :uchar, :uint ], :void],
              [:glVertexAttribP3uiv, [ :uint, :uint, :uchar, :pointer ], :void],
              [:glVertexAttribP4ui, [ :uint, :uint, :uchar, :uint ], :void],
              [:glVertexAttribP4uiv, [ :uint, :uint, :uchar, :pointer ], :void],
              [:glVertexP2ui, [ :uint, :uint ], :void],
              [:glVertexP2uiv, [ :uint, :pointer ], :void],
              [:glVertexP3ui, [ :uint, :uint ], :void],
              [:glVertexP3uiv, [ :uint, :pointer ], :void],
              [:glVertexP4ui, [ :uint, :uint ], :void],
              [:glVertexP4uiv, [ :uint, :pointer ], :void]
  end
end

