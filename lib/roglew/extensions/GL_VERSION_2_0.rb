module Roglew
  module GL
    ACTIVE_ATTRIBUTE_MAX_LENGTH      ||= 0x8B8A
    ACTIVE_ATTRIBUTES                ||= 0x8B89
    ACTIVE_UNIFORM_MAX_LENGTH        ||= 0x8B87
    ACTIVE_UNIFORMS                  ||= 0x8B86
    ATTACHED_SHADERS                 ||= 0x8B85
    BLEND_EQUATION_ALPHA             ||= 0x883D
    BLEND_EQUATION                   ||= 0x8009
    BLEND_EQUATION_RGB               ||= BLEND_EQUATION
    BOOL                             ||= 0x8B56
    BOOL_VEC2                        ||= 0x8B57
    BOOL_VEC3                        ||= 0x8B58
    BOOL_VEC4                        ||= 0x8B59
    COMPILE_STATUS                   ||= 0x8B81
    COORD_REPLACE                    ||= 0x8862
    CURRENT_PROGRAM                  ||= 0x8B8D
    CURRENT_VERTEX_ATTRIB            ||= 0x8626
    DELETE_STATUS                    ||= 0x8B80
    DRAW_BUFFER0                     ||= 0x8825
    DRAW_BUFFER1                     ||= 0x8826
    DRAW_BUFFER10                    ||= 0x882F
    DRAW_BUFFER11                    ||= 0x8830
    DRAW_BUFFER12                    ||= 0x8831
    DRAW_BUFFER13                    ||= 0x8832
    DRAW_BUFFER14                    ||= 0x8833
    DRAW_BUFFER15                    ||= 0x8834
    DRAW_BUFFER2                     ||= 0x8827
    DRAW_BUFFER3                     ||= 0x8828
    DRAW_BUFFER4                     ||= 0x8829
    DRAW_BUFFER5                     ||= 0x882A
    DRAW_BUFFER6                     ||= 0x882B
    DRAW_BUFFER7                     ||= 0x882C
    DRAW_BUFFER8                     ||= 0x882D
    DRAW_BUFFER9                     ||= 0x882E
    FLOAT_MAT2                       ||= 0x8B5A
    FLOAT_MAT3                       ||= 0x8B5B
    FLOAT_MAT4                       ||= 0x8B5C
    FLOAT_VEC2                       ||= 0x8B50
    FLOAT_VEC3                       ||= 0x8B51
    FLOAT_VEC4                       ||= 0x8B52
    FRAGMENT_SHADER                  ||= 0x8B30
    FRAGMENT_SHADER_DERIVATIVE_HINT  ||= 0x8B8B
    INFO_LOG_LENGTH                  ||= 0x8B84
    INT_VEC2                         ||= 0x8B53
    INT_VEC3                         ||= 0x8B54
    INT_VEC4                         ||= 0x8B55
    LINK_STATUS                      ||= 0x8B82
    LOWER_LEFT                       ||= 0x8CA1
    MAX_COMBINED_TEXTURE_IMAGE_UNITS ||= 0x8B4D
    MAX_DRAW_BUFFERS                 ||= 0x8824
    MAX_FRAGMENT_UNIFORM_COMPONENTS  ||= 0x8B49
    MAX_TEXTURE_COORDS               ||= 0x8871
    MAX_TEXTURE_IMAGE_UNITS          ||= 0x8872
    MAX_VARYING_FLOATS               ||= 0x8B4B
    MAX_VERTEX_ATTRIBS               ||= 0x8869
    MAX_VERTEX_TEXTURE_IMAGE_UNITS   ||= 0x8B4C
    MAX_VERTEX_UNIFORM_COMPONENTS    ||= 0x8B4A
    POINT_SPRITE                     ||= 0x8861
    POINT_SPRITE_COORD_ORIGIN        ||= 0x8CA0
    SAMPLER_1D                       ||= 0x8B5D
    SAMPLER_1D_SHADOW                ||= 0x8B61
    SAMPLER_2D                       ||= 0x8B5E
    SAMPLER_2D_SHADOW                ||= 0x8B62
    SAMPLER_3D                       ||= 0x8B5F
    SAMPLER_CUBE                     ||= 0x8B60
    SHADER_SOURCE_LENGTH             ||= 0x8B88
    SHADER_TYPE                      ||= 0x8B4F
    SHADING_LANGUAGE_VERSION         ||= 0x8B8C
    STENCIL_BACK_FAIL                ||= 0x8801
    STENCIL_BACK_FUNC                ||= 0x8800
    STENCIL_BACK_PASS_DEPTH_FAIL     ||= 0x8802
    STENCIL_BACK_PASS_DEPTH_PASS     ||= 0x8803
    STENCIL_BACK_REF                 ||= 0x8CA3
    STENCIL_BACK_VALUE_MASK          ||= 0x8CA4
    STENCIL_BACK_WRITEMASK           ||= 0x8CA5
    UPPER_LEFT                       ||= 0x8CA2
    VALIDATE_STATUS                  ||= 0x8B83
    VERTEX_ATTRIB_ARRAY_ENABLED      ||= 0x8622
    VERTEX_ATTRIB_ARRAY_NORMALIZED   ||= 0x886A
    VERTEX_ATTRIB_ARRAY_POINTER      ||= 0x8645
    VERTEX_ATTRIB_ARRAY_SIZE         ||= 0x8623
    VERTEX_ATTRIB_ARRAY_STRIDE       ||= 0x8624
    VERTEX_ATTRIB_ARRAY_TYPE         ||= 0x8625
    VERTEX_PROGRAM_POINT_SIZE        ||= 0x8642
    VERTEX_PROGRAM_TWO_SIDE          ||= 0x8643
    VERTEX_SHADER                    ||= 0x8B31
  end
end

module GL_VERSION_2_0
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions	[
        [ :glAttachShader, [:uint, :uint], :void ],
        [ :glBindAttribLocation, [:uint, :uint, :string], :void ],
        [ :glBlendEquationSeparate, [:uint, :uint], :void ],
        [ :glCompileShader, [:uint], :void ],
        [ :glCreateProgram, [], :uint ],
        [ :glCreateShader, [:uint], :uint ],
        [ :glDeleteProgram, [:uint], :void ],
        [ :glDeleteShader, [:uint], :void ],
        [ :glDetachShader, [:uint, :uint], :void ],
        [ :glDisableVertexAttribArray, [:uint], :void ],
        [ :glDrawBuffers, [:int, :pointer], :void ],
        [ :glEnableVertexAttribArray, [:uint], :void ],
        [ :glGetActiveAttrib, [:uint, :uint, :int, :pointer, :pointer, :pointer, :pointer], :void ],
        [ :glGetActiveUniform, [:uint, :uint, :int, :pointer, :pointer, :pointer, :pointer], :void ],
        [ :glGetAttachedShaders, [:uint, :int, :pointer, :pointer], :void ],
        [ :glGetAttribLocation, [:uint, :string], :int ],
        [ :glGetProgramInfoLog, [:uint, :int, :pointer, :pointer], :void ],
        [ :glGetProgramiv, [:uint, :uint, :pointer], :void ],
        [ :glGetShaderInfoLog, [:uint, :int, :pointer, :pointer], :void ],
        [ :glGetShaderiv, [:uint, :uint, :pointer], :void ],
        [ :glGetShaderSource, [:uint, :int, :pointer, :pointer], :void ],
        [ :glGetUniformfv, [:uint, :int, :pointer], :void ],
        [ :glGetUniformiv, [:uint, :int, :pointer], :void ],
        [ :glGetUniformLocation, [:uint, :string], :int ],
        [ :glGetVertexAttribdv, [:uint, :uint, :pointer], :void ],
        [ :glGetVertexAttribfv, [:uint, :uint, :pointer], :void ],
        [ :glGetVertexAttribiv, [:uint, :uint, :pointer], :void ],
        [ :glGetVertexAttribPointerv, [:uint, :uint, :pointer], :void ],
        [ :glIsProgram, [:uint], :bool ],
        [ :glIsShader, [:uint], :bool ],
        [ :glLinkProgram, [:uint], :void ],
        [ :glShaderSource, [:uint, :int, :pointer, :pointer], :void ],
        [ :glStencilFuncSeparate, [:uint, :uint, :int, :uint], :void ],
        [ :glStencilMaskSeparate, [:uint, :uint], :void ],
        [ :glStencilOpSeparate, [:uint, :uint, :uint, :uint], :void ],
        [ :glUniform1f, [:int, :float], :void ],
        [ :glUniform1fv, [:int, :int, :pointer], :void ],
        [ :glUniform1i, [:int, :int], :void ],
        [ :glUniform1iv, [:int, :int, :pointer], :void ],
        [ :glUniform2f, [:int, :float, :float], :void ],
        [ :glUniform2fv, [:int, :int, :pointer], :void ],
        [ :glUniform2i, [:int, :int, :int], :void ],
        [ :glUniform2iv, [:int, :int, :pointer], :void ],
        [ :glUniform3f, [:int, :float, :float, :float], :void ],
        [ :glUniform3fv, [:int, :int, :pointer], :void ],
        [ :glUniform3i, [:int, :int, :int, :int], :void ],
        [ :glUniform3iv, [:int, :int, :pointer], :void ],
        [ :glUniform4f, [:int, :float, :float, :float, :float], :void ],
        [ :glUniform4fv, [:int, :int, :pointer], :void ],
        [ :glUniform4i, [:int, :int, :int, :int, :int], :void ],
        [ :glUniform4iv, [:int, :int, :pointer], :void ],
        [ :glUniformMatrix2fv, [:int, :int, :bool, :pointer], :void ],
        [ :glUniformMatrix3fv, [:int, :int, :bool, :pointer], :void ],
        [ :glUniformMatrix4fv, [:int, :int, :bool, :pointer], :void ],
        [ :glUseProgram, [:uint], :void ],
        [ :glValidateProgram, [:uint], :void ],
        [ :glVertexAttrib1d, [:uint, :double], :void ],
        [ :glVertexAttrib1dv, [:uint, :pointer], :void ],
        [ :glVertexAttrib1f, [:uint, :float], :void ],
        [ :glVertexAttrib1fv, [:uint, :pointer], :void ],
        [ :glVertexAttrib1s, [:uint, :short], :void ],
        [ :glVertexAttrib1sv, [:uint, :pointer], :void ],
        [ :glVertexAttrib2d, [:uint, :double, :double], :void ],
        [ :glVertexAttrib2dv, [:uint, :pointer], :void ],
        [ :glVertexAttrib2f, [:uint, :float, :float], :void ],
        [ :glVertexAttrib2fv, [:uint, :pointer], :void ],
        [ :glVertexAttrib2s, [:uint, :short, :short], :void ],
        [ :glVertexAttrib2sv, [:uint, :pointer], :void ],
        [ :glVertexAttrib3d, [:uint, :double, :double, :double], :void ],
        [ :glVertexAttrib3dv, [:uint, :pointer], :void ],
        [ :glVertexAttrib3f, [:uint, :float, :float, :float], :void ],
        [ :glVertexAttrib3fv, [:uint, :pointer], :void ],
        [ :glVertexAttrib3s, [:uint, :short, :short, :short], :void ],
        [ :glVertexAttrib3sv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4bv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4d, [:uint, :double, :double, :double, :double], :void ],
        [ :glVertexAttrib4dv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4f, [:uint, :float, :float, :float, :float], :void ],
        [ :glVertexAttrib4fv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4iv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4Nbv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4Niv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4Nsv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4Nub, [:uint, :uchar, :uchar, :uchar, :uchar], :void ],
        [ :glVertexAttrib4Nubv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4Nuiv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4Nusv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4s, [:uint, :short, :short, :short, :short], :void ],
        [ :glVertexAttrib4sv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4ubv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4uiv, [:uint, :pointer], :void ],
        [ :glVertexAttrib4usv, [:uint, :pointer], :void ],
        [ :glVertexAttribPointer, [:uint, :int, :uint, :bool, :int, :size_t], :void]
    ]
  end

  module RenderContext
    include Roglew::RenderContextExtension

    def create_program(shaders = nil)
      program = Roglew::ShaderProgram.new(@rh)
      return program unless shaders
      shaders = case shaders
        when Hash
          shaders.map { |type, source| create_shader(type, source) }
        when Array
          shaders
        else
          raise ArgumentError, "It must be Hash or Array. Given: #{shaders.class}"
      end
      program.attach(*shaders)
      program.link
      program
    end

    def create_shader(*args)
      Roglew::Shader.new(@rh, *args)
    end

    def get_program(program, pname)
      p = FFI::MemoryPointer.new(:int)
      @rh.glGetProgramiv(program, pname, p)
      result = p.read_int
      [Roglew::GL::DELETE_STATUS, Roglew::GL::COMPILE_STATUS].include?(pname) ? result == Roglew::GL::TRUE : result
    end

    def get_program_info_log(program)
      length = get_program(program, Roglew::GL::INFO_LOG_LENGTH)
      p = FFI::MemoryPointer.new(:char, length)
      @rh.glGetProgramInfoLog(program, length, nil, p)
      p.read_string
    end

    def get_shader(shader, pname)
      p = FFI::MemoryPointer.new(:int)
      @rh.glGetShaderiv(shader, pname, p)
      result = p.read_int
      [Roglew::GL::DELETE_STATUS, Roglew::GL::COMPILE_STATUS].include?(pname) ? result == Roglew::GL::TRUE : result
    end

    def get_shader_info_log(shader)
      length = get_shader(shader, Roglew::GL::INFO_LOG_LENGTH)
      p = FFI::MemoryPointer.new(:char, length)
      @rh.glGetShaderInfoLog(shader, length, nil, p)
      p.read_string
    end

    def shader_sources(shader, *srcs)
      ps = FFI::MemoryPointer.new(:string, srcs.length)
      ps.write_array_of_pointer(srcs.map { |src| FFI::MemoryPointer.from_string(src) })
      pl = FFI::MemoryPointer.new(:int, srcs.length)
      pl.write_array_of_int(srcs.map { |src| src.length })
      @rh.glShaderSource(shader, srcs.length, ps, pl)
    end
  end
end

%w'
  shader
  shader_program
'.each { |f| require "#{File.expand_path(__FILE__)[0..-4]}/#{f}" }