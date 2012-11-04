module GL_EXT_index_func
  module RenderContext
    include Roglew::GLExtension

    functions [:glIndexFuncEXT, [ :uint, :float ], :void]
  end
end