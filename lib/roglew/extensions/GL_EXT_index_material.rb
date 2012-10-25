module GL_EXT_index_material
  module RenderContext
    include GLExtension

    functions [:glIndexMaterialEXT, [ :uint, :uint ], :void]
  end
end