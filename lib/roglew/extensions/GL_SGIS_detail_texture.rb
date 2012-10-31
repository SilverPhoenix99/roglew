module GL_SGIS_detail_texture
  module RenderContext
    include GLExtension

    functions [:glDetailTexFuncSGIS, [ :uint, :int, :pointer ], :void],
              [:glGetDetailTexFuncSGIS, [ :uint, :pointer ], :void]
  end
end