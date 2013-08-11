module Roglew
  module GL
    SUBSAMPLE_DISTANCE_AMD ||= 0x883F
  end
end

module GL_AMD_sample_positions
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glSetMultisamplefvAMD, [ :uint, :uint, :pointer ], :void]
    ]
  end
end