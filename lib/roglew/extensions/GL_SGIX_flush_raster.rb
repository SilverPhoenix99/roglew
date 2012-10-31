module GL_SGIX_flush_raster
  module RenderContext
    include GLExtension

    functions [:glFlushRasterSGIX, [  ], :void]
  end
end