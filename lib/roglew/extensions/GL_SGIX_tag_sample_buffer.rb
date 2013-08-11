module GL_SGIX_tag_sample_buffer
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glTagSampleBufferSGIX, [  ], :void]
    ]
  end
end