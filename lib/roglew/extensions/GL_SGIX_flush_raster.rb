module GL_SGIX_flush_raster
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glFlushRasterSGIX, [  ], :void]
    ]
  end
end