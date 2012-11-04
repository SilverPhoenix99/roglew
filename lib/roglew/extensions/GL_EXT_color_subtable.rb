module GL_EXT_color_subtable
  module RenderContext
    include Roglew::GLExtension

    functions [:glColorSubTableEXT, [ :uint, :int, :int, :uint, :uint, :pointer ], :void],
              [:glCopyColorSubTableEXT, [ :uint, :int, :int, :int, :int ], :void]
  end
end