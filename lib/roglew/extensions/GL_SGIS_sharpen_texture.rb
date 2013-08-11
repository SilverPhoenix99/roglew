module GL_SGIS_sharpen_texture
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glGetSharpenTexFuncSGIS, [ :uint, :pointer ], :void],
        [:glSharpenTexFuncSGIS, [ :uint, :int, :pointer ], :void]
    ]
  end
end