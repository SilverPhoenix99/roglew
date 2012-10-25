module GL_core_2_0
  module RenderContext

    def create_program(*args)
      ShaderProgram.new(self, *args)
    end

    def create_shader(*args)
      Shader.new(self, *args)
    end
  end
end