module GL_EXT_index_func
  module RenderContext
    include GLExtension

    functions [:glIndexFuncEXT, [ :uint, :float ], :void]
  end
end