module GL_ARB_copy_image
  module RenderContext
    include GLExtension

    functions [:glCopyImageSubData, [ :uint, :uint, :int, :int, :int, :int, :uint, :uint, :int, :int, :int, :int, :int, :int, :int ], :void]
  end
end