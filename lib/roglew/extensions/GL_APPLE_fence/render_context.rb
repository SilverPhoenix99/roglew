module GL_APPLE_fence
  module RenderContext
    include GLExtension

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