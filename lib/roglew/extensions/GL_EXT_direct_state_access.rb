module Roglew
  module GL
    PROGRAM_MATRIX_EXT             = 0x8E2D
    PROGRAM_MATRIX_STACK_DEPTH_EXT = 0x8E2F
    TRANSPOSE_PROGRAM_MATRIX_EXT   = 0x8E2E
  end
end

module GL_EXT_direct_state_access
  module RenderContext
    include GLExtension

    functions [:glBindMultiTextureEXT, [ :uint, :uint, :uint ], :void],
              [:glCheckNamedFramebufferStatusEXT, [ :uint, :uint ], :uint],
              [:glClientAttribDefaultEXT, [ :uint ], :void],
              [:glCompressedMultiTexImage1DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :pointer ], :void],
              [:glCompressedMultiTexImage2DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedMultiTexImage3DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedMultiTexSubImage1DEXT, [ :uint, :uint, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedMultiTexSubImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedMultiTexSubImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedTextureImage1DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :pointer ], :void],
              [:glCompressedTextureImage2DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedTextureImage3DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedTextureSubImage1DEXT, [ :uint, :uint, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedTextureSubImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedTextureSubImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCopyMultiTexImage1DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int ], :void],
              [:glCopyMultiTexImage2DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int, :int ], :void],
              [:glCopyMultiTexSubImage1DEXT, [ :uint, :uint, :int, :int, :int, :int, :int ], :void],
              [:glCopyMultiTexSubImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int ], :void],
              [:glCopyMultiTexSubImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int, :int ], :void],
              [:glCopyTextureImage1DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int ], :void],
              [:glCopyTextureImage2DEXT, [ :uint, :uint, :int, :uint, :int, :int, :int, :int, :int ], :void],
              [:glCopyTextureSubImage1DEXT, [ :uint, :uint, :int, :int, :int, :int, :int ], :void],
              [:glCopyTextureSubImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int ], :void],
              [:glCopyTextureSubImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int, :int ], :void],
              [:glDisableClientStateiEXT, [ :uint, :uint ], :void],
              [:glDisableClientStateIndexedEXT, [ :uint, :uint ], :void],
              [:glDisableVertexArrayAttribEXT, [ :uint, :uint ], :void],
              [:glDisableVertexArrayEXT, [ :uint, :uint ], :void],
              [:glEnableClientStateiEXT, [ :uint, :uint ], :void],
              [:glEnableClientStateIndexedEXT, [ :uint, :uint ], :void],
              [:glEnableVertexArrayAttribEXT, [ :uint, :uint ], :void],
              [:glEnableVertexArrayEXT, [ :uint, :uint ], :void],
              [:glFlushMappedNamedBufferRangeEXT, [ :uint, :int64, :int64 ], :void],
              [:glFramebufferDrawBufferEXT, [ :uint, :uint ], :void],
              [:glFramebufferDrawBuffersEXT, [ :uint, :int, :pointer ], :void],
              [:glFramebufferReadBufferEXT, [ :uint, :uint ], :void],
              [:glGenerateMultiTexMipmapEXT, [ :uint, :uint ], :void],
              [:glGenerateTextureMipmapEXT, [ :uint, :uint ], :void],
              [:glGetCompressedMultiTexImageEXT, [ :uint, :uint, :int, :pointer ], :void],
              [:glGetCompressedTextureImageEXT, [ :uint, :uint, :int, :pointer ], :void],
              [:glGetDoublei_vEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetDoubleIndexedvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetFloati_vEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetFloatIndexedvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetFramebufferParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetMultiTexEnvfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexEnvivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexGendvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexGenfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexGenivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexImageEXT, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexLevelParameterfvEXT, [ :uint, :uint, :int, :uint, :pointer ], :void],
              [:glGetMultiTexLevelParameterivEXT, [ :uint, :uint, :int, :uint, :pointer ], :void],
              [:glGetMultiTexParameterfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexParameterIivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexParameterIuivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetMultiTexParameterivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedBufferParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetNamedBufferPointervEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetNamedBufferSubDataEXT, [ :uint, :int64, :int64, :pointer ], :void],
              [:glGetNamedFramebufferAttachmentParameterivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedProgramivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedProgramLocalParameterdvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedProgramLocalParameterfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedProgramLocalParameterIivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedProgramLocalParameterIuivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedProgramStringEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetNamedRenderbufferParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetPointeri_vEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetPointerIndexedvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetTextureImageEXT, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void],
              [:glGetTextureLevelParameterfvEXT, [ :uint, :uint, :int, :uint, :pointer ], :void],
              [:glGetTextureLevelParameterivEXT, [ :uint, :uint, :int, :uint, :pointer ], :void],
              [:glGetTextureParameterfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetTextureParameterIivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetTextureParameterIuivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetTextureParameterivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetVertexArrayIntegeri_vEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetVertexArrayIntegervEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetVertexArrayPointeri_vEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetVertexArrayPointervEXT, [ :uint, :uint, :pointer ], :void],
              [:glMapNamedBufferEXT, [ :uint, :uint ], :pointer],
              [:glMapNamedBufferRangeEXT, [ :uint, :int64, :int64, :uint ], :pointer],
              [:glMatrixFrustumEXT, [ :uint, :double, :double, :double, :double, :double, :double ], :void],
              [:glMatrixLoaddEXT, [ :uint, :pointer ], :void],
              [:glMatrixLoadfEXT, [ :uint, :pointer ], :void],
              [:glMatrixLoadIdentityEXT, [ :uint ], :void],
              [:glMatrixLoadTransposedEXT, [ :uint, :pointer ], :void],
              [:glMatrixLoadTransposefEXT, [ :uint, :pointer ], :void],
              [:glMatrixMultdEXT, [ :uint, :pointer ], :void],
              [:glMatrixMultfEXT, [ :uint, :pointer ], :void],
              [:glMatrixMultTransposedEXT, [ :uint, :pointer ], :void],
              [:glMatrixMultTransposefEXT, [ :uint, :pointer ], :void],
              [:glMatrixOrthoEXT, [ :uint, :double, :double, :double, :double, :double, :double ], :void],
              [:glMatrixPopEXT, [ :uint ], :void],
              [:glMatrixPushEXT, [ :uint ], :void],
              [:glMatrixRotatedEXT, [ :uint, :double, :double, :double, :double ], :void],
              [:glMatrixRotatefEXT, [ :uint, :float, :float, :float, :float ], :void],
              [:glMatrixScaledEXT, [ :uint, :double, :double, :double ], :void],
              [:glMatrixScalefEXT, [ :uint, :float, :float, :float ], :void],
              [:glMatrixTranslatedEXT, [ :uint, :double, :double, :double ], :void],
              [:glMatrixTranslatefEXT, [ :uint, :float, :float, :float ], :void],
              [:glMultiTexBufferEXT, [ :uint, :uint, :uint, :uint ], :void],
              [:glMultiTexCoordPointerEXT, [ :uint, :int, :uint, :int, :pointer ], :void],
              [:glMultiTexEnvfEXT, [ :uint, :uint, :uint, :float ], :void],
              [:glMultiTexEnvfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexEnviEXT, [ :uint, :uint, :uint, :int ], :void],
              [:glMultiTexEnvivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexGendEXT, [ :uint, :uint, :uint, :double ], :void],
              [:glMultiTexGendvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexGenfEXT, [ :uint, :uint, :uint, :float ], :void],
              [:glMultiTexGenfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexGeniEXT, [ :uint, :uint, :uint, :int ], :void],
              [:glMultiTexGenivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexImage1DEXT, [ :uint, :uint, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glMultiTexImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glMultiTexImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glMultiTexParameterfEXT, [ :uint, :uint, :uint, :float ], :void],
              [:glMultiTexParameterfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexParameteriEXT, [ :uint, :uint, :uint, :int ], :void],
              [:glMultiTexParameterIivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexParameterIuivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexParameterivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glMultiTexRenderbufferEXT, [ :uint, :uint, :uint ], :void],
              [:glMultiTexSubImage1DEXT, [ :uint, :uint, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glMultiTexSubImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glMultiTexSubImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glNamedBufferDataEXT, [ :uint, :int64, :pointer, :uint ], :void],
              [:glNamedBufferSubDataEXT, [ :uint, :int64, :int64, :pointer ], :void],
              [:glNamedCopyBufferSubDataEXT, [ :uint, :uint, :int64, :int64, :int64 ], :void],
              [:glNamedFramebufferRenderbufferEXT, [ :uint, :uint, :uint, :uint ], :void],
              [:glNamedFramebufferTexture1DEXT, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glNamedFramebufferTexture2DEXT, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glNamedFramebufferTexture3DEXT, [ :uint, :uint, :uint, :uint, :int, :int ], :void],
              [:glNamedFramebufferTextureEXT, [ :uint, :uint, :uint, :int ], :void],
              [:glNamedFramebufferTextureFaceEXT, [ :uint, :uint, :uint, :int, :uint ], :void],
              [:glNamedFramebufferTextureLayerEXT, [ :uint, :uint, :uint, :int, :int ], :void],
              [:glNamedProgramLocalParameter4dEXT, [ :uint, :uint, :uint, :double, :double, :double, :double ], :void],
              [:glNamedProgramLocalParameter4dvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glNamedProgramLocalParameter4fEXT, [ :uint, :uint, :uint, :float, :float, :float, :float ], :void],
              [:glNamedProgramLocalParameter4fvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glNamedProgramLocalParameterI4iEXT, [ :uint, :uint, :uint, :int, :int, :int, :int ], :void],
              [:glNamedProgramLocalParameterI4ivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glNamedProgramLocalParameterI4uiEXT, [ :uint, :uint, :uint, :uint, :uint, :uint, :uint ], :void],
              [:glNamedProgramLocalParameterI4uivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glNamedProgramLocalParameters4fvEXT, [ :uint, :uint, :uint, :int, :pointer ], :void],
              [:glNamedProgramLocalParametersI4ivEXT, [ :uint, :uint, :uint, :int, :pointer ], :void],
              [:glNamedProgramLocalParametersI4uivEXT, [ :uint, :uint, :uint, :int, :pointer ], :void],
              [:glNamedProgramStringEXT, [ :uint, :uint, :uint, :int, :pointer ], :void],
              [:glNamedRenderbufferStorageEXT, [ :uint, :uint, :int, :int ], :void],
              [:glNamedRenderbufferStorageMultisampleCoverageEXT, [ :uint, :int, :int, :uint, :int, :int ], :void],
              [:glNamedRenderbufferStorageMultisampleEXT, [ :uint, :int, :uint, :int, :int ], :void],
              [:glProgramUniform1dEXT, [ :uint, :int, :double ], :void],
              [:glProgramUniform1dvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform1fEXT, [ :uint, :int, :float ], :void],
              [:glProgramUniform1fvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform1iEXT, [ :uint, :int, :int ], :void],
              [:glProgramUniform1ivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform1uiEXT, [ :uint, :int, :uint ], :void],
              [:glProgramUniform1uivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2dEXT, [ :uint, :int, :double, :double ], :void],
              [:glProgramUniform2dvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2fEXT, [ :uint, :int, :float, :float ], :void],
              [:glProgramUniform2fvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2iEXT, [ :uint, :int, :int, :int ], :void],
              [:glProgramUniform2ivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2uiEXT, [ :uint, :int, :uint, :uint ], :void],
              [:glProgramUniform2uivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3dEXT, [ :uint, :int, :double, :double, :double ], :void],
              [:glProgramUniform3dvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3fEXT, [ :uint, :int, :float, :float, :float ], :void],
              [:glProgramUniform3fvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3iEXT, [ :uint, :int, :int, :int, :int ], :void],
              [:glProgramUniform3ivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3uiEXT, [ :uint, :int, :uint, :uint, :uint ], :void],
              [:glProgramUniform3uivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4dEXT, [ :uint, :int, :double, :double, :double, :double ], :void],
              [:glProgramUniform4dvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4fEXT, [ :uint, :int, :float, :float, :float, :float ], :void],
              [:glProgramUniform4fvEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4iEXT, [ :uint, :int, :int, :int, :int, :int ], :void],
              [:glProgramUniform4ivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4uiEXT, [ :uint, :int, :uint, :uint, :uint, :uint ], :void],
              [:glProgramUniform4uivEXT, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniformMatrix2dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x3dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x3fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x4dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x4fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x2dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x2fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x4dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x4fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x2dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x2fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x3dvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x3fvEXT, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glPushClientAttribDefaultEXT, [ :uint ], :void],
              [:glTextureBufferEXT, [ :uint, :uint, :uint, :uint ], :void],
              [:glTextureImage1DEXT, [ :uint, :uint, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glTextureImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glTextureImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glTextureParameterfEXT, [ :uint, :uint, :uint, :float ], :void],
              [:glTextureParameterfvEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glTextureParameteriEXT, [ :uint, :uint, :uint, :int ], :void],
              [:glTextureParameterIivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glTextureParameterIuivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glTextureParameterivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glTextureRenderbufferEXT, [ :uint, :uint, :uint ], :void],
              [:glTextureSubImage1DEXT, [ :uint, :uint, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glTextureSubImage2DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glTextureSubImage3DEXT, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glUnmapNamedBufferEXT, [ :uint ], :uchar],
              [:glVertexArrayColorOffsetEXT, [ :uint, :uint, :int, :uint, :int, :int64 ], :void],
              [:glVertexArrayEdgeFlagOffsetEXT, [ :uint, :uint, :int, :int64 ], :void],
              [:glVertexArrayFogCoordOffsetEXT, [ :uint, :uint, :uint, :int, :int64 ], :void],
              [:glVertexArrayIndexOffsetEXT, [ :uint, :uint, :uint, :int, :int64 ], :void],
              [:glVertexArrayMultiTexCoordOffsetEXT, [ :uint, :uint, :uint, :int, :uint, :int, :int64 ], :void],
              [:glVertexArrayNormalOffsetEXT, [ :uint, :uint, :uint, :int, :int64 ], :void],
              [:glVertexArraySecondaryColorOffsetEXT, [ :uint, :uint, :int, :uint, :int, :int64 ], :void],
              [:glVertexArrayTexCoordOffsetEXT, [ :uint, :uint, :int, :uint, :int, :int64 ], :void],
              [:glVertexArrayVertexAttribIOffsetEXT, [ :uint, :uint, :uint, :int, :uint, :int, :int64 ], :void],
              [:glVertexArrayVertexAttribOffsetEXT, [ :uint, :uint, :uint, :int, :uint, :uchar, :int, :int64 ], :void],
              [:glVertexArrayVertexOffsetEXT, [ :uint, :uint, :int, :uint, :int, :int64 ], :void]
  end
end
