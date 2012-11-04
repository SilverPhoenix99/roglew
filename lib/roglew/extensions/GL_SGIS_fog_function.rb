module GL_SGIS_fog_function
  module RenderContext
    include Roglew::GLExtension

    functions [:glFogFuncSGIS, [ :int, :pointer ], :void],
              [:glGetFogFuncSGIS, [ :pointer ], :void]
  end
end