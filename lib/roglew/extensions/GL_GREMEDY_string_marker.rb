module GL_GREMEDY_string_marker
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glStringMarkerGREMEDY, [ :int, :pointer ], :void]
    ]
  end
end