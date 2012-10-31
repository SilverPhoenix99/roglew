module GL_SGIX_reference_plane
  module RenderContext
    include GLExtension

    functions [:glReferencePlaneSGIX, [ :pointer ], :void]
  end
end