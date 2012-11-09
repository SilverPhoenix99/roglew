module Roglew
  module GL
    ASYNC_MARKER_SGIX ||= 0x8329
  end
end

module GL_SGIX_async
  module RenderContext
    include Roglew::GLExtension

    functions [:glAsyncMarkerSGIX, [ :uint ], :void],
              [:glDeleteAsyncMarkersSGIX, [ :uint, :int ], :void],
              [:glFinishAsyncSGIX, [ :pointer ], :int],
              [:glGenAsyncMarkersSGIX, [ :int ], :uint],
              [:glIsAsyncMarkerSGIX, [ :uint ], :uchar],
              [:glPollAsyncSGIX, [ :pointer ], :int]
  end
end

