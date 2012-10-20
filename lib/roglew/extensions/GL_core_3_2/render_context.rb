module GL_core_3_2
  module RenderContext
    include GLExtension

    functions [:glFramebufferTexture, [ :uint, :uint, :uint, :int ], :void],
              [:glGetBufferParameteri64v, [ :uint, :uint, :pointer ], :void],
              [:glGetInteger64i_v, [ :uint, :uint, :pointer ], :void]
  end
end