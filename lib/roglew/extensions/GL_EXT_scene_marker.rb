module GL_EXT_scene_marker
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBeginSceneEXT, [], :void],
        [:glEndSceneEXT, [], :void]
    ]
  end
end