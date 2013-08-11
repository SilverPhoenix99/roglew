module GL_NV_copy_image
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glCopyImageSubDataNV, [ :uint, :uint, :int, :int, :int, :int, :uint, :uint, :int, :int, :int, :int, :int, :int, :int ], :void]
    ]
  end
end