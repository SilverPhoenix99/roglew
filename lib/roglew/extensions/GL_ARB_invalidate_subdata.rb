module GL_ARB_invalidate_subdata
  module RenderContext
    include Roglew::GLExtension

    functions [:glInvalidateBufferData, [ :uint ], :void],
              [:glInvalidateBufferSubData, [ :uint, :int64, :int64 ], :void],
              [:glInvalidateFramebuffer, [ :uint, :int, :pointer ], :void],
              [:glInvalidateSubFramebuffer, [ :uint, :int, :pointer, :int, :int, :int, :int ], :void],
              [:glInvalidateTexImage, [ :uint, :int ], :void],
              [:glInvalidateTexSubImage, [ :uint, :int, :int, :int, :int, :int, :int, :int ], :void]
  end
end