module GL_MESA_resize_buffers
  module RenderContext
    include GLExtension

    functions [:glResizeBuffersMESA, [  ], :void]
  end
end