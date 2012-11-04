module GL_SGIX_reference_plane
  module RenderContext
    include Roglew::GLExtension

    functions [:glReferencePlaneSGIX, [ :pointer ], :void]
  end
end