module GL_SGIS_fog_function
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glFogFuncSGIS, [ :int, :pointer ], :void],
        [:glGetFogFuncSGIS, [ :pointer ], :void]
    ]
  end
end