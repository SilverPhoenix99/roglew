module GL_VERSION_1_1
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions :ffi, [
        [ :glBindTexture, [ :uint, :uint ], :void ],
        [ :glCopyTexImage1D, [ :uint, :int, :uint, :int, :int, :int, :int ], :void ],
        [ :glCopyTexImage2D, [ :uint, :int, :uint, :int, :int, :int, :int, :int ], :void ],
        [ :glCopyTexSubImage1D, [ :uint, :int, :int, :int, :int, :int ], :void ],
        [ :glCopyTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :int, :int ], :void ],
        [ :glDeleteTextures, [ :int, :pointer ], :void ],
        [ :glDrawArrays, [ :uint, :int, :int ], :void ],
        [ :glDrawElements, [ :uint, :int, :uint, :pointer ], :void ],
        [ :glGenTextures, [ :int, :pointer ], :void ],
        [ :glIsTexture, [ :uint ], :uchar ],
        [ :glPolygonOffset, [ :float, :float ], :void ],
        [ :glTexSubImage1D, [ :uint, :int, :int, :int, :uint, :uint, :pointer ], :void ],
        [ :glTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void ]
    ]

    functions :ffi, :compatibility, [
        [ :glAreTexturesResident, [ :int, :pointer, :pointer ], :bool ],
        [ :glArrayElement, [ :int ], :void ],
        [ :glColorPointer, [ :int, :uint, :int, :pointer ], :void ],
        [ :glDisableClientState, [ :uint ], :void ],
        [ :glEdgeFlagPointer, [ :int, :pointer ], :void ],
        [ :glEnableClientState, [ :uint ], :void ],
        [ :glGetPointerv, [ :uint, :pointer ], :void ],
        [ :glIndexPointer, [ :uint, :int, :pointer ], :void ],
        [ :glIndexub, [ :uchar ], :void ],
        [ :glIndexubv, [ :pointer ], :void ],
        [ :glInterleavedArrays, [ :uint, :int, :pointer ], :void ],
        [ :glMapGrid1d, [ :int, :double, :double ], :void ],
        [ :glMapGrid1f, [ :int, :float, :float ], :void ],
        [ :glMapGrid2d, [ :int, :double, :double, :int, :double, :double ], :void ],
        [ :glMapGrid2f, [ :int, :float, :float, :int, :float, :float ], :void ],
        [ :glNormalPointer, [ :uint, :int, :pointer ], :void ],
        [ :glPopClientAttrib, [], :void ],
        [ :glPrioritizeTextures, [ :int, :pointer, :pointer ], :void ],
        [ :glPushClientAttrib, [ :uint ], :void ],
        [ :glTexCoordPointer, [ :int, :uint, :int, :pointer ], :void ],
        [ :glVertexPointer, [ :int, :uint, :int, :pointer ], :void ]
    ]
  end
end