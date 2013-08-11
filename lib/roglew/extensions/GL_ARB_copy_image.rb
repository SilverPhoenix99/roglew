module GL_ARB_copy_image
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glCopyImageSubData, [ :uint, :uint, :int, :int, :int, :int, :uint, :uint, :int, :int, :int, :int, :int, :int, :int ], :void]
    ]
  end
end