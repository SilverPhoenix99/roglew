module Roglew
  module GL
    PRIMITIVE_RESTART_INDEX_NV = 0x8559
    PRIMITIVE_RESTART_NV       = 0x8558
  end
end

module GL_NV_primitive_restart
  module RenderContext
    include GLExtension

    functions [:glPrimitiveRestartIndexNV, [ :uint ], :void],
              [:glPrimitiveRestartNV, [  ], :void]
  end
end

