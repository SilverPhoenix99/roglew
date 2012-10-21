module GL_core_2_0
  module RenderContext
    inlcude GLExtension
    #TODO include GLObject

    #Example: mod.functions.each { |f| def_function *f } if mod.respond_to? :functions
    functions	[:glAttachShader,             [:uint, :uint],                                               :void],
              [:glBindAttribLocation,       [:uint, :uint, :string],                                      :void],
              [:glBlendEquationSeparate,    [:uint, :uint],                                               :void],
              [:glCompileShader,            [:uint],                                                      :void],
              [:glCreateProgram,            [],                                                           :uint],
              [:glCreateShader,             [:uint],                                                      :uint],
              [:glDeleteProgram,            [:uint],                                                      :void],
              [:glDeleteShader,             [:uint],                                                      :void],
              [:glDetachShader,             [:uint, :uint],                                               :void],
              [:glDisableVertexAttribArray, [:uint],                                                      :void],
              [:glDrawBuffers,              [:int, :pointer],                                             :void],
              [:glEnableVertexAttribArray,  [:uint],                                                      :void],
              [:glGetActiveAttrib,          [:uint, :uint, :int, :pointer, :pointer, :pointer, :pointer], :void],
              [:glGetActiveUniform,         [:uint, :uint, :int, :pointer, :pointer, :pointer, :pointer], :void],
              [:glGetAttachedShaders,       [:uint, :int, :pointer, :pointer],                            :void],
              [:glGetAttribLocation,        [:uint, :string],                                             :int],
              [:glGetProgramInfoLog,        [:uint, :int, :pointer, :pointer],                            :void],
              [:glGetProgramiv,             [:uint, :uint, :pointer],                                     :void],
              [:glGetShaderInfoLog,         [:uint, :int, :pointer, :pointer],                            :void],
              [:glGetShaderiv,              [:uint, :uint, :pointer],                                     :void],
              [:glGetShaderSource,          [:uint, :int, :pointer, :pointer],                            :void],
              [:glGetUniformfv,             [:uint, :int, :pointer],                                      :void],
              [:glGetUniformiv,             [:uint, :int, :pointer],                                      :void],
              [:glGetUniformLocation,       [:uint, :string],                                             :int],
              [:glGetVertexAttribdv,        [:uint, :uint, :pointer],                                     :void],
              [:glGetVertexAttribfv,        [:uint, :uint, :pointer],                                     :void],
              [:glGetVertexAttribiv,        [:uint, :uint, :pointer],                                     :void],
              [:glGetVertexAttribPointerv,  [:uint, :uint, :pointer],                                     :void],
              [:glIsProgram,                [:uint],                                                      :bool],
              [:glIsShader,                 [:uint],                                                      :bool],
              [:glLinkProgram,              [:uint],                                                      :void],
              [:glShaderSource,             [:uint, :int, :pointer, :pointer],                            :void],
              [:glStencilFuncSeparate,      [:uint, :uint, :int, :uint],                                  :void],
              [:glStencilMaskSeparate,      [:uint, :uint],                                               :void],
              [:glStencilOpSeparate,        [:uint, :uint, :uint, :uint],                                 :void],
              [:glUniform1f,                [:int, :float],                                               :void],
              [:glUniform1fv,               [:int, :int, :pointer],                                       :void],
              [:glUniform1i,                [:int, :int],                                                 :void],
              [:glUniform1iv,               [:int, :int, :pointer],                                       :void],
              [:glUniform2f,                [:int, :float, :float],                                       :void],
              [:glUniform2fv,               [:int, :int, :pointer],                                       :void],
              [:glUniform2i,                [:int, :int, :int],                                           :void],
              [:glUniform2iv,               [:int, :int, :pointer],                                       :void],
              [:glUniform3f,                [:int, :float, :float, :float],                               :void],
              [:glUniform3fv,               [:int, :int, :pointer],                                       :void],
              [:glUniform3i,                [:int, :int, :int, :int],                                     :void],
              [:glUniform3iv,               [:int, :int, :pointer],                                       :void],
              [:glUniform4f,                [:int, :float, :float, :float, :float],                       :void],
              [:glUniform4fv,               [:int, :int, :pointer],                                       :void],
              [:glUniform4i,                [:int, :int, :int, :int, :int],                               :void],
              [:glUniform4iv,               [:int, :int, :pointer],                                       :void],
              [:glUniformMatrix2fv,         [:int, :int, :bool, :pointer],                                :void],
              [:glUniformMatrix3fv,         [:int, :int, :bool, :pointer],                                :void],
              [:glUniformMatrix4fv,         [:int, :int, :bool, :pointer],                                :void],
              [:glUseProgram,               [:uint],                                                      :void],
              [:glValidateProgram,          [:uint],                                                      :void],
              [:glVertexAttrib1d,           [:uint, :double],                                             :void],
              [:glVertexAttrib1dv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib1f,           [:uint, :float],                                              :void],
              [:glVertexAttrib1fv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib1s,           [:uint, :short],                                              :void],
              [:glVertexAttrib1sv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib2d,           [:uint, :double, :double],                                    :void],
              [:glVertexAttrib2dv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib2f,           [:uint, :float, :float],                                      :void],
              [:glVertexAttrib2fv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib2s,           [:uint, :short, :short],                                      :void],
              [:glVertexAttrib2sv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib3d,           [:uint, :double, :double, :double],                           :void],
              [:glVertexAttrib3dv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib3f,           [:uint, :float, :float, :float],                              :void],
              [:glVertexAttrib3fv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib3s,           [:uint, :short, :short, :short],                              :void],
              [:glVertexAttrib3sv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib4bv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib4d,           [:uint, :double, :double, :double, :double],                  :void],
              [:glVertexAttrib4dv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib4f,           [:uint, :float, :float, :float, :float],                      :void],
              [:glVertexAttrib4fv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib4iv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib4Nbv,         [:uint, :pointer],                                            :void],
              [:glVertexAttrib4Niv,         [:uint, :pointer],                                            :void],
              [:glVertexAttrib4Nsv,         [:uint, :pointer],                                            :void],
              [:glVertexAttrib4Nub,         [:uint, :uchar, :uchar, :uchar, :uchar],                      :void],
              [:glVertexAttrib4Nubv,        [:uint, :pointer],                                            :void],
              [:glVertexAttrib4Nuiv,        [:uint, :pointer],                                            :void],
              [:glVertexAttrib4Nusv,        [:uint, :pointer],                                            :void],
              [:glVertexAttrib4s,           [:uint, :short, :short, :short, :short],                      :void],
              [:glVertexAttrib4sv,          [:uint, :pointer],                                            :void],
              [:glVertexAttrib4ubv,         [:uint, :pointer],                                            :void],
              [:glVertexAttrib4uiv,         [:uint, :pointer],                                            :void],
              [:glVertexAttrib4usv,         [:uint, :pointer],                                            :void],
              [:glVertexAttribPointer,      [:uint, :int, :uint, :bool, :int, :pointer],                  :void]

    def create_program(*args)
      ShaderProgram.new(self, *args)
    end

    def create_shader(*args)
      Shader.new(self, *args)
    end
  end
end