module GL_SGIX_reference_plane
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glReferencePlaneSGIX, [ :pointer ], :void]
    ]
  end
end