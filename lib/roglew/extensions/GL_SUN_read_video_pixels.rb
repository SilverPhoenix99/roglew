module GL_SUN_read_video_pixels
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glReadVideoPixelsSUN, [ :int, :int, :int, :int, :uint, :uint, :pointer ], :void]
    ]
  end
end