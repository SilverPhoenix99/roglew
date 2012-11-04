module Roglew
  module GL
    ALL_COMPLETED_NV   = 0x84F2
    FENCE_CONDITION_NV = 0x84F4
    FENCE_STATUS_NV    = 0x84F3
  end
end

module GL_NV_fence
  module RenderContext
    include Roglew::GLExtension

    functions [:glDeleteFencesNV, [ :int, :pointer ], :void],
              [:glFinishFenceNV, [ :uint ], :void],
              [:glGenFencesNV, [ :int, :pointer ], :void],
              [:glGetFenceivNV, [ :uint, :uint, :pointer ], :void],
              [:glIsFenceNV, [ :uint ], :uchar],
              [:glSetFenceNV, [ :uint, :uint ], :void],
              [:glTestFenceNV, [ :uint ], :uchar]
  end
end

