module GL_EXT_copy_texture
  module RenderContext
    include Roglew::GLExtension

    functions [:glCopyTexImage1DEXT, [ :uint, :int, :uint, :int, :int, :int, :int ], :void],
              [:glCopyTexImage2DEXT, [ :uint, :int, :uint, :int, :int, :int, :int, :int ], :void],
              [:glCopyTexSubImage1DEXT, [ :uint, :int, :int, :int, :int, :int ], :void],
              [:glCopyTexSubImage2DEXT, [ :uint, :int, :int, :int, :int, :int, :int, :int ], :void],
              [:glCopyTexSubImage3DEXT, [ :uint, :int, :int, :int, :int, :int, :int, :int, :int ], :void]
  end
end