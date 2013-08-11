module GL_EXT_color_subtable
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glColorSubTableEXT, [ :uint, :int, :int, :uint, :uint, :pointer ], :void],
        [:glCopyColorSubTableEXT, [ :uint, :int, :int, :int, :int ], :void]
    ]
  end
end