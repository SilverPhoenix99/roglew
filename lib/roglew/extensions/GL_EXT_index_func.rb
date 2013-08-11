module GL_EXT_index_func
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glIndexFuncEXT, [ :uint, :float ], :void]
    ]
  end
end