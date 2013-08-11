module GL_MESA_resize_buffers
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glResizeBuffersMESA, [], :void]
    ]
  end
end