module GL_EXT_index_material
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glIndexMaterialEXT, [ :uint, :uint ], :void]
    ]
  end
end