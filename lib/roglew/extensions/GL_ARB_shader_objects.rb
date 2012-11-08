module Roglew
  module GL
    BOOL_ARB                             = 0x8B56 unless const_defined? :BOOL_ARB
    BOOL_VEC2_ARB                        = 0x8B57 unless const_defined? :BOOL_VEC2_ARB
    BOOL_VEC3_ARB                        = 0x8B58 unless const_defined? :BOOL_VEC3_ARB
    BOOL_VEC4_ARB                        = 0x8B59 unless const_defined? :BOOL_VEC4_ARB
    FLOAT_MAT2_ARB                       = 0x8B5A unless const_defined? :FLOAT_MAT2_ARB
    FLOAT_MAT3_ARB                       = 0x8B5B unless const_defined? :FLOAT_MAT3_ARB
    FLOAT_MAT4_ARB                       = 0x8B5C unless const_defined? :FLOAT_MAT4_ARB
    FLOAT_VEC2_ARB                       = 0x8B50 unless const_defined? :FLOAT_VEC2_ARB
    FLOAT_VEC3_ARB                       = 0x8B51 unless const_defined? :FLOAT_VEC3_ARB
    FLOAT_VEC4_ARB                       = 0x8B52 unless const_defined? :FLOAT_VEC4_ARB
    INT_VEC2_ARB                         = 0x8B53 unless const_defined? :INT_VEC2_ARB
    INT_VEC3_ARB                         = 0x8B54 unless const_defined? :INT_VEC3_ARB
    INT_VEC4_ARB                         = 0x8B55 unless const_defined? :INT_VEC4_ARB
    OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8B87 unless const_defined? :OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB
    OBJECT_ACTIVE_UNIFORMS_ARB           = 0x8B86 unless const_defined? :OBJECT_ACTIVE_UNIFORMS_ARB
    OBJECT_ATTACHED_OBJECTS_ARB          = 0x8B85 unless const_defined? :OBJECT_ATTACHED_OBJECTS_ARB
    OBJECT_COMPILE_STATUS_ARB            = 0x8B81 unless const_defined? :OBJECT_COMPILE_STATUS_ARB
    OBJECT_DELETE_STATUS_ARB             = 0x8B80 unless const_defined? :OBJECT_DELETE_STATUS_ARB
    OBJECT_INFO_LOG_LENGTH_ARB           = 0x8B84 unless const_defined? :OBJECT_INFO_LOG_LENGTH_ARB
    OBJECT_LINK_STATUS_ARB               = 0x8B82 unless const_defined? :OBJECT_LINK_STATUS_ARB
    OBJECT_SHADER_SOURCE_LENGTH_ARB      = 0x8B88 unless const_defined? :OBJECT_SHADER_SOURCE_LENGTH_ARB
    OBJECT_SUBTYPE_ARB                   = 0x8B4F unless const_defined? :OBJECT_SUBTYPE_ARB
    OBJECT_TYPE_ARB                      = 0x8B4E unless const_defined? :OBJECT_TYPE_ARB
    OBJECT_VALIDATE_STATUS_ARB           = 0x8B83 unless const_defined? :OBJECT_VALIDATE_STATUS_ARB
    PROGRAM_OBJECT_ARB                   = 0x8B40 unless const_defined? :PROGRAM_OBJECT_ARB
    SAMPLER_1D_ARB                       = 0x8B5D unless const_defined? :SAMPLER_1D_ARB
    SAMPLER_1D_SHADOW_ARB                = 0x8B61 unless const_defined? :SAMPLER_1D_SHADOW_ARB
    SAMPLER_2D_ARB                       = 0x8B5E unless const_defined? :SAMPLER_2D_ARB
    SAMPLER_2D_RECT_ARB                  = 0x8B63 unless const_defined? :SAMPLER_2D_RECT_ARB
    SAMPLER_2D_RECT_SHADOW_ARB           = 0x8B64 unless const_defined? :SAMPLER_2D_RECT_SHADOW_ARB
    SAMPLER_2D_SHADOW_ARB                = 0x8B62 unless const_defined? :SAMPLER_2D_SHADOW_ARB
    SAMPLER_3D_ARB                       = 0x8B5F unless const_defined? :SAMPLER_3D_ARB
    SAMPLER_CUBE_ARB                     = 0x8B60 unless const_defined? :SAMPLER_CUBE_ARB
    SHADER_OBJECT_ARB                    = 0x8B48 unless const_defined? :SHADER_OBJECT_ARB
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

