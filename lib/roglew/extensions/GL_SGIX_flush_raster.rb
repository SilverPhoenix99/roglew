module GL_SGIX_flush_raster
  module RenderContext
    include Roglew::GLExtension

    functions [:glFlushRasterSGIX, [  ], :void]
  end
end