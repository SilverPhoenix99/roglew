module GL_SGIS_texture4D
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glTexImage4DSGIS, [ :uint, :int, :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void],
        [:glTexSubImage4DSGIS, [ :uint, :int, :int, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void]
    ]
  end
end