module Roglew
  module GL
    KTX_BACK_REGION    ||= 0x1
    KTX_FRONT_REGION   ||= 0x0
    KTX_STENCIL_REGION ||= 0x3
    KTX_Z_REGION       ||= 0x2
  end
end

module GL_KTX_buffer_region
  module RenderContext
    include Roglew::GLExtension

    functions [:glBufferRegionEnabled, [  ], :uint],
              [:glDeleteBufferRegion, [ :uint ], :void],
              [:glDrawBufferRegion, [ :uint, :int, :int, :int, :int, :int, :int ], :void],
              [:glNewBufferRegion, [ :uint ], :uint],
              [:glReadBufferRegion, [ :uint, :int, :int, :int, :int ], :void]
  end
end

