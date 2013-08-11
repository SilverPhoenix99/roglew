module GL_EXT_subtexture
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glTexSubImage1DEXT, [ :uint, :int, :int, :int, :uint, :uint, :pointer ], :void],
        [:glTexSubImage2DEXT, [ :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
        [:glTexSubImage3DEXT, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void]
    ]
  end
end