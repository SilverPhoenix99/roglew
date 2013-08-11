module GL_SGIS_texture_filter4
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glGetTexFilterFuncSGIS, [ :uint, :uint, :pointer ], :void],
      [:glTexFilterFuncSGIS, [ :uint, :uint, :int, :pointer ], :void]
    ]
  end
end