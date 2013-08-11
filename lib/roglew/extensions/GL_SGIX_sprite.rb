module GL_SGIX_sprite
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glSpriteParameterfSGIX, [ :uint, :float ], :void],
      [:glSpriteParameterfvSGIX, [ :uint, :pointer ], :void],
      [:glSpriteParameteriSGIX, [ :uint, :int ], :void],
      [:glSpriteParameterivSGIX, [ :uint, :pointer ], :void]
    ]
  end
end