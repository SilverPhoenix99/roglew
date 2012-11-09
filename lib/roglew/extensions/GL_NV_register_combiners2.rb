module Roglew
  module GL
    PER_STAGE_CONSTANTS_NV ||= 0x8535
  end
end

module GL_NV_register_combiners2
  module RenderContext
    include Roglew::GLExtension

    functions [:glCombinerStageParameterfvNV, [ :uint, :uint, :pointer ], :void],
              [:glGetCombinerStageParameterfvNV, [ :uint, :uint, :pointer ], :void]
  end
end

