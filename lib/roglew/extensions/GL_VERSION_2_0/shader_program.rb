module Roglew
  class ShaderProgram
    attr_accessor :vertex, :fragment, :geometry

    def initialize(context, shaders = {})
      @context = context.bind { |c| c.glCreateProgram() }
      @vertex   = as_shader(GL::VERTEX_SHADER,   shaders[:vertex])
      @fragment = as_shader(GL::FRAGMENT_SHADER, shaders[:fragment])
      @geometry = as_shader(GL::GEOMETRY_SHADER, shaders[:geometry])
    end

    def attach(shader)
      #TODO
    end



    private
    def as_shader(type, s)
      s.is_a?(String) ? Shader.new(@context, type, s) : s
    end
  end
end