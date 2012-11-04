module GL_SGIS_sharpen_texture
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetSharpenTexFuncSGIS, [ :uint, :pointer ], :void],
              [:glSharpenTexFuncSGIS, [ :uint, :int, :pointer ], :void]
  end
end