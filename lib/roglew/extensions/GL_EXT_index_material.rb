module GL_EXT_index_material
  module RenderContext
    include Roglew::GLExtension

    functions [:glIndexMaterialEXT, [ :uint, :uint ], :void]
  end
end