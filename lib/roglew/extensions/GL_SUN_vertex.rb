module GL_SUN_vertex
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glColor3fVertex3fSUN, [ :float, :float, :float, :float, :float, :float ], :void],
      [:glColor3fVertex3fvSUN, [ :pointer, :pointer ], :void],
      [:glColor4fNormal3fVertex3fSUN, [ :float, :float, :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glColor4fNormal3fVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glColor4ubVertex2fSUN, [ :uchar, :uchar, :uchar, :uchar, :float, :float ], :void],
      [:glColor4ubVertex2fvSUN, [ :pointer, :pointer ], :void],
      [:glColor4ubVertex3fSUN, [ :uchar, :uchar, :uchar, :uchar, :float, :float, :float ], :void],
      [:glColor4ubVertex3fvSUN, [ :pointer, :pointer ], :void],
      [:glNormal3fVertex3fSUN, [ :float, :float, :float, :float, :float, :float ], :void],
      [:glNormal3fVertex3fvSUN, [ :pointer, :pointer ], :void],
      [:glReplacementCodeuiColor3fVertex3fSUN, [ :uint, :float, :float, :float, :float, :float, :float ], :void],
      [:glReplacementCodeuiColor3fVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glReplacementCodeuiColor4fNormal3fVertex3fSUN, [ :uint, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glReplacementCodeuiColor4fNormal3fVertex3fvSUN, [ :pointer, :pointer, :pointer, :pointer ], :void],
      [:glReplacementCodeuiColor4ubVertex3fSUN, [ :uint, :uchar, :uchar, :uchar, :uchar, :float, :float, :float ], :void],
      [:glReplacementCodeuiColor4ubVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glReplacementCodeuiNormal3fVertex3fSUN, [ :uint, :float, :float, :float, :float, :float, :float ], :void],
      [:glReplacementCodeuiNormal3fVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN, [ :uint, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN, [ :pointer, :pointer, :pointer, :pointer, :pointer ], :void],
      [:glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN, [ :uint, :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN, [ :pointer, :pointer, :pointer, :pointer ], :void],
      [:glReplacementCodeuiTexCoord2fVertex3fSUN, [ :uint, :float, :float, :float, :float, :float ], :void],
      [:glReplacementCodeuiTexCoord2fVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glReplacementCodeuiVertex3fSUN, [ :uint, :float, :float, :float ], :void],
      [:glReplacementCodeuiVertex3fvSUN, [ :pointer, :pointer ], :void],
      [:glTexCoord2fColor3fVertex3fSUN, [ :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glTexCoord2fColor3fVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glTexCoord2fColor4fNormal3fVertex3fSUN, [ :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glTexCoord2fColor4fNormal3fVertex3fvSUN, [ :pointer, :pointer, :pointer, :pointer ], :void],
      [:glTexCoord2fColor4ubVertex3fSUN, [ :float, :float, :uchar, :uchar, :uchar, :uchar, :float, :float, :float ], :void],
      [:glTexCoord2fColor4ubVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glTexCoord2fNormal3fVertex3fSUN, [ :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glTexCoord2fNormal3fVertex3fvSUN, [ :pointer, :pointer, :pointer ], :void],
      [:glTexCoord2fVertex3fSUN, [ :float, :float, :float, :float, :float ], :void],
      [:glTexCoord2fVertex3fvSUN, [ :pointer, :pointer ], :void],
      [:glTexCoord4fColor4fNormal3fVertex4fSUN, [ :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glTexCoord4fColor4fNormal3fVertex4fvSUN, [ :pointer, :pointer, :pointer, :pointer ], :void],
      [:glTexCoord4fVertex4fSUN, [ :float, :float, :float, :float, :float, :float, :float, :float ], :void],
      [:glTexCoord4fVertex4fvSUN, [ :pointer, :pointer ], :void]
    ]
  end
end