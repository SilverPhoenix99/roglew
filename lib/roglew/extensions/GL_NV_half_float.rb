module Roglew
  module GL
    HALF_FLOAT_NV ||= 0x140B
  end
end

module GL_NV_half_float
  module RenderContext
    include Roglew::GLExtension

    functions [:glColor3hNV, [ :ushort, :ushort, :ushort ], :void],
              [:glColor3hvNV, [ :pointer ], :void],
              [:glColor4hNV, [ :ushort, :ushort, :ushort, :ushort ], :void],
              [:glColor4hvNV, [ :pointer ], :void],
              [:glFogCoordhNV, [ :ushort ], :void],
              [:glFogCoordhvNV, [ :pointer ], :void],
              [:glMultiTexCoord1hNV, [ :uint, :ushort ], :void],
              [:glMultiTexCoord1hvNV, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2hNV, [ :uint, :ushort, :ushort ], :void],
              [:glMultiTexCoord2hvNV, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3hNV, [ :uint, :ushort, :ushort, :ushort ], :void],
              [:glMultiTexCoord3hvNV, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4hNV, [ :uint, :ushort, :ushort, :ushort, :ushort ], :void],
              [:glMultiTexCoord4hvNV, [ :uint, :pointer ], :void],
              [:glNormal3hNV, [ :ushort, :ushort, :ushort ], :void],
              [:glNormal3hvNV, [ :pointer ], :void],
              [:glSecondaryColor3hNV, [ :ushort, :ushort, :ushort ], :void],
              [:glSecondaryColor3hvNV, [ :pointer ], :void],
              [:glTexCoord1hNV, [ :ushort ], :void],
              [:glTexCoord1hvNV, [ :pointer ], :void],
              [:glTexCoord2hNV, [ :ushort, :ushort ], :void],
              [:glTexCoord2hvNV, [ :pointer ], :void],
              [:glTexCoord3hNV, [ :ushort, :ushort, :ushort ], :void],
              [:glTexCoord3hvNV, [ :pointer ], :void],
              [:glTexCoord4hNV, [ :ushort, :ushort, :ushort, :ushort ], :void],
              [:glTexCoord4hvNV, [ :pointer ], :void],
              [:glVertex2hNV, [ :ushort, :ushort ], :void],
              [:glVertex2hvNV, [ :pointer ], :void],
              [:glVertex3hNV, [ :ushort, :ushort, :ushort ], :void],
              [:glVertex3hvNV, [ :pointer ], :void],
              [:glVertex4hNV, [ :ushort, :ushort, :ushort, :ushort ], :void],
              [:glVertex4hvNV, [ :pointer ], :void],
              [:glVertexAttrib1hNV, [ :uint, :ushort ], :void],
              [:glVertexAttrib1hvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib2hNV, [ :uint, :ushort, :ushort ], :void],
              [:glVertexAttrib2hvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib3hNV, [ :uint, :ushort, :ushort, :ushort ], :void],
              [:glVertexAttrib3hvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib4hNV, [ :uint, :ushort, :ushort, :ushort, :ushort ], :void],
              [:glVertexAttrib4hvNV, [ :uint, :pointer ], :void],
              [:glVertexAttribs1hvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs2hvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs3hvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs4hvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexWeighthNV, [ :ushort ], :void],
              [:glVertexWeighthvNV, [ :pointer ], :void]
  end
end

