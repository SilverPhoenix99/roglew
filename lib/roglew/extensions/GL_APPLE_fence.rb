module Roglew
  module GL
    DRAW_PIXELS_APPLE = 0x8A0A unless const_defined? :DRAW_PIXELS_APPLE
    FENCE_APPLE       = 0x8A0B unless const_defined? :FENCE_APPLE
  end
end

module GL_APPLE_fence
  module RenderContext
    include Roglew::GLExtension

    functions [:glDeleteFencesAPPLE, [ :int, :pointer ], :void],
              [:glFinishFenceAPPLE, [ :uint ], :void],
              [:glFinishObjectAPPLE, [ :uint, :int ], :void],
              [:glGenFencesAPPLE, [ :int, :pointer ], :void],
              [:glIsFenceAPPLE, [ :uint ], :uchar],
              [:glSetFenceAPPLE, [ :uint ], :void],
              [:glTestFenceAPPLE, [ :uint ], :uchar],
              [:glTestObjectAPPLE, [ :uint, :uint ], :uchar]
  end
end