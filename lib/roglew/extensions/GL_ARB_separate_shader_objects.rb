module Roglew
  module GL
    ACTIVE_PROGRAM             ||= 0x8259
    ALL_SHADER_BITS            ||= 0xFFFFFFFF
    FRAGMENT_SHADER_BIT        ||= 0x00000002
    GEOMETRY_SHADER_BIT        ||= 0x00000004
    PROGRAM_PIPELINE_BINDING   ||= 0x825A
    PROGRAM_SEPARABLE          ||= 0x8258
    TESS_CONTROL_SHADER_BIT    ||= 0x00000008
    TESS_EVALUATION_SHADER_BIT ||= 0x00000010
    VERTEX_SHADER_BIT          ||= 0x00000001
  end
end

module GL_ARB_separate_shader_objects
  module RenderContext
    include Roglew::GLExtension

    functions [:glActiveShaderProgram, [ :uint, :uint ], :void],
              [:glBindProgramPipeline, [ :uint ], :void],
              [:glCreateShaderProgramv, [ :uint, :int, :pointer ], :uint],
              [:glDeleteProgramPipelines, [ :int, :pointer ], :void],
              [:glGenProgramPipelines, [ :int, :pointer ], :void],
              [:glGetProgramPipelineInfoLog, [ :uint, :int, :pointer, :string ], :void],
              [:glGetProgramPipelineiv, [ :uint, :uint, :pointer ], :void],
              [:glIsProgramPipeline, [ :uint ], :uchar],
              [:glProgramUniform1d, [ :uint, :int, :double ], :void],
              [:glProgramUniform1dv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform1f, [ :uint, :int, :float ], :void],
              [:glProgramUniform1fv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform1i, [ :uint, :int, :int ], :void],
              [:glProgramUniform1iv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform1ui, [ :uint, :int, :uint ], :void],
              [:glProgramUniform1uiv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2d, [ :uint, :int, :double, :double ], :void],
              [:glProgramUniform2dv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2f, [ :uint, :int, :float, :float ], :void],
              [:glProgramUniform2fv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2i, [ :uint, :int, :int, :int ], :void],
              [:glProgramUniform2iv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform2ui, [ :uint, :int, :uint, :uint ], :void],
              [:glProgramUniform2uiv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3d, [ :uint, :int, :double, :double, :double ], :void],
              [:glProgramUniform3dv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3f, [ :uint, :int, :float, :float, :float ], :void],
              [:glProgramUniform3fv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3i, [ :uint, :int, :int, :int, :int ], :void],
              [:glProgramUniform3iv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform3ui, [ :uint, :int, :uint, :uint, :uint ], :void],
              [:glProgramUniform3uiv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4d, [ :uint, :int, :double, :double, :double, :double ], :void],
              [:glProgramUniform4dv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4f, [ :uint, :int, :float, :float, :float, :float ], :void],
              [:glProgramUniform4fv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4i, [ :uint, :int, :int, :int, :int, :int ], :void],
              [:glProgramUniform4iv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniform4ui, [ :uint, :int, :uint, :uint, :uint, :uint ], :void],
              [:glProgramUniform4uiv, [ :uint, :int, :int, :pointer ], :void],
              [:glProgramUniformMatrix2dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x3dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x3fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x4dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix2x4fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x2dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x2fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x4dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix3x4fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x2dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x2fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x3dv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glProgramUniformMatrix4x3fv, [ :uint, :int, :int, :uchar, :pointer ], :void],
              [:glUseProgramStages, [ :uint, :uint, :uint ], :void],
              [:glValidateProgramPipeline, [ :uint ], :void]
  end
end

