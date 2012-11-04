module GL_EXT_subtexture
  module RenderContext
    include Roglew::GLExtension

    functions [:glTexSubImage1DEXT, [ :uint, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glTexSubImage2DEXT, [ :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
              [:glTexSubImage3DEXT, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void]
  end
end