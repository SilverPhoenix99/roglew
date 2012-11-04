module GL_MESA_resize_buffers
  module RenderContext
    include Roglew::GLExtension

    functions [:glResizeBuffersMESA, [  ], :void]
  end
end