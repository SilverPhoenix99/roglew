module Roglew
  module GL
    BOOL_ARB                             = 0x8B56
    BOOL_VEC2_ARB                        = 0x8B57
    BOOL_VEC3_ARB                        = 0x8B58
    BOOL_VEC4_ARB                        = 0x8B59
    FLOAT_MAT2_ARB                       = 0x8B5A
    FLOAT_MAT3_ARB                       = 0x8B5B
    FLOAT_MAT4_ARB                       = 0x8B5C
    FLOAT_VEC2_ARB                       = 0x8B50
    FLOAT_VEC3_ARB                       = 0x8B51
    FLOAT_VEC4_ARB                       = 0x8B52
    INT_VEC2_ARB                         = 0x8B53
    INT_VEC3_ARB                         = 0x8B54
    INT_VEC4_ARB                         = 0x8B55
    OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8B87
    OBJECT_ACTIVE_UNIFORMS_ARB           = 0x8B86
    OBJECT_ATTACHED_OBJECTS_ARB          = 0x8B85
    OBJECT_COMPILE_STATUS_ARB            = 0x8B81
    OBJECT_DELETE_STATUS_ARB             = 0x8B80
    OBJECT_INFO_LOG_LENGTH_ARB           = 0x8B84
    OBJECT_LINK_STATUS_ARB               = 0x8B82
    OBJECT_SHADER_SOURCE_LENGTH_ARB      = 0x8B88
    OBJECT_SUBTYPE_ARB                   = 0x8B4F
    OBJECT_TYPE_ARB                      = 0x8B4E
    OBJECT_VALIDATE_STATUS_ARB           = 0x8B83
    PROGRAM_OBJECT_ARB                   = 0x8B40
    SAMPLER_1D_ARB                       = 0x8B5D
    SAMPLER_1D_SHADOW_ARB                = 0x8B61
    SAMPLER_2D_ARB                       = 0x8B5E
    SAMPLER_2D_RECT_ARB                  = 0x8B63
    SAMPLER_2D_RECT_SHADOW_ARB           = 0x8B64
    SAMPLER_2D_SHADOW_ARB                = 0x8B62
    SAMPLER_3D_ARB                       = 0x8B5F
    SAMPLER_CUBE_ARB                     = 0x8B60
    SHADER_OBJECT_ARB                    = 0x8B48
  end
end

module GL_ARB_shader_objects
  module RenderContext
    include Roglew::GLExtension

    functions [:glAttachObjectARB, [ :uint, :uint ], :void],
              [:glCompileShaderARB, [ :uint ], :void],
              [:glCreateProgramObjectARB, [  ], :uint],
              [:glCreateShaderObjectARB, [ :uint ], :uint],
              [:glDeleteObjectARB, [ :uint ], :void],
              [:glDetachObjectARB, [ :uint, :uint ], :void],
              [:glGetActiveUniformARB, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void],
              [:glGetAttachedObjectsARB, [ :uint, :int, :pointer, :pointer ], :void],
              [:glGetHandleARB, [ :uint ], :uint],
              [:glGetInfoLogARB, [ :uint, :int, :pointer, :string ], :void],
              [:glGetObjectParameterfvARB, [ :uint, :uint, :pointer ], :void],
              [:glGetObjectParameterivARB, [ :uint, :uint, :pointer ], :void],
              [:glGetShaderSourceARB, [ :uint, :int, :pointer, :string ], :void],
              [:glGetUniformfvARB, [ :uint, :int, :pointer ], :void],
              [:glGetUniformivARB, [ :uint, :int, :pointer ], :void],
              [:glGetUniformLocationARB, [ :uint, :string ], :int],
              [:glLinkProgramARB, [ :uint ], :void],
              [:glShaderSourceARB, [ :uint, :int, :pointer, :pointer ], :void],
              [:glUniform1fARB, [ :int, :float ], :void],
              [:glUniform1fvARB, [ :int, :int, :pointer ], :void],
              [:glUniform1iARB, [ :int, :int ], :void],
              [:glUniform1ivARB, [ :int, :int, :pointer ], :void],
              [:glUniform2fARB, [ :int, :float, :float ], :void],
              [:glUniform2fvARB, [ :int, :int, :pointer ], :void],
              [:glUniform2iARB, [ :int, :int, :int ], :void],
              [:glUniform2ivARB, [ :int, :int, :pointer ], :void],
              [:glUniform3fARB, [ :int, :float, :float, :float ], :void],
              [:glUniform3fvARB, [ :int, :int, :pointer ], :void],
              [:glUniform3iARB, [ :int, :int, :int, :int ], :void],
              [:glUniform3ivARB, [ :int, :int, :pointer ], :void],
              [:glUniform4fARB, [ :int, :float, :float, :float, :float ], :void],
              [:glUniform4fvARB, [ :int, :int, :pointer ], :void],
              [:glUniform4iARB, [ :int, :int, :int, :int, :int ], :void],
              [:glUniform4ivARB, [ :int, :int, :pointer ], :void],
              [:glUniformMatrix2fvARB, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3fvARB, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4fvARB, [ :int, :int, :uchar, :pointer ], :void],
              [:glUseProgramObjectARB, [ :uint ], :void],
              [:glValidateProgramARB, [ :uint ], :void]
  end
end

