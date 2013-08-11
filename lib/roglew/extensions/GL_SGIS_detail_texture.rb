module GL_SGIS_detail_texture
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDetailTexFuncSGIS, [ :uint, :int, :pointer ], :void],
        [:glGetDetailTexFuncSGIS, [ :uint, :pointer ], :void]
    ]
  end
end