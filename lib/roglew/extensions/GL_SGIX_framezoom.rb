module GL_SGIX_framezoom
  module RenderContext
    include Roglew::GLExtension

    functions [:glFrameZoomSGIX, [ :int ], :void]
  end
end

