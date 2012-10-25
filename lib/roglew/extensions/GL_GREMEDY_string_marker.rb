module GL_GREMEDY_string_marker
  module RenderContext
    include GLExtension

    functions [:glStringMarkerGREMEDY, [ :int, :pointer ], :void]
  end
end