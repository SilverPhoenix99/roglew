module GL_SGIX_framezoom
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glFrameZoomSGIX, [ :int ], :void]
    ]
  end
end

