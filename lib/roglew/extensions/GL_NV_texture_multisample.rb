module Roglew
  module GL
    TEXTURE_COVERAGE_SAMPLES_NV ||= 0x9045
    TEXTURE_COLOR_SAMPLES_NV    ||= 0x9046
  end
end

module GL_NV_texture_multisample
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glTexImage2DMultisampleCoverageNV, [ :uint, :int, :int, :int, :int, :int, :uchar ], :void],
        [:glTexImage3DMultisampleCoverageNV, [ :uint, :int, :int, :int, :int, :int, :int, :uchar ], :void],
        [:glTextureImage2DMultisampleCoverageNV, [ :uint, :uint, :int, :int, :int, :int, :int, :uchar ], :void],
        [:glTextureImage2DMultisampleNV, [ :uint, :uint, :int, :int, :int, :int, :uchar ], :void],
        [:glTextureImage3DMultisampleCoverageNV, [ :uint, :uint, :int, :int, :int, :int, :int, :int, :uchar ], :void],
        [:glTextureImage3DMultisampleNV, [ :uint, :uint, :int, :int, :int, :int, :int, :uchar ], :void]
    ]
  end
end

