module GL_EXT_debug_marker
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glInsertEventMarkerEXT, [ :int, :string ], :void],
        [:glPopGroupMarkerEXT, [  ], :void],
        [:glPushGroupMarkerEXT, [ :int, :string ], :void]
    ]
  end
end