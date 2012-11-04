module GL_SGIX_tag_sample_buffer
  module RenderContext
    include Roglew::GLExtension

    functions [:glTagSampleBufferSGIX, [  ], :void]
  end
end