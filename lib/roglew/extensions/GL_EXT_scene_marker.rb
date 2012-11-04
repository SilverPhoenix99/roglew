module GL_EXT_scene_marker
  module RenderContext
    include Roglew::GLExtension

    functions [:glBeginSceneEXT, [  ], :void],
              [:glEndSceneEXT, [  ], :void]
  end
end