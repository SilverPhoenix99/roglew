module GL_MESA_window_pos
  module RenderContext
    include Roglew::GLExtension

    functions [:glWindowPos2dMESA, [ :double, :double ], :void],
              [:glWindowPos2dvMESA, [ :pointer ], :void],
              [:glWindowPos2fMESA, [ :float, :float ], :void],
              [:glWindowPos2fvMESA, [ :pointer ], :void],
              [:glWindowPos2iMESA, [ :int, :int ], :void],
              [:glWindowPos2ivMESA, [ :pointer ], :void],
              [:glWindowPos2sMESA, [ :short, :short ], :void],
              [:glWindowPos2svMESA, [ :pointer ], :void],
              [:glWindowPos3dMESA, [ :double, :double, :double ], :void],
              [:glWindowPos3dvMESA, [ :pointer ], :void],
              [:glWindowPos3fMESA, [ :float, :float, :float ], :void],
              [:glWindowPos3fvMESA, [ :pointer ], :void],
              [:glWindowPos3iMESA, [ :int, :int, :int ], :void],
              [:glWindowPos3ivMESA, [ :pointer ], :void],
              [:glWindowPos3sMESA, [ :short, :short, :short ], :void],
              [:glWindowPos3svMESA, [ :pointer ], :void],
              [:glWindowPos4dMESA, [ :double, :double, :double, :double ], :void],
              [:glWindowPos4dvMESA, [ :pointer ], :void],
              [:glWindowPos4fMESA, [ :float, :float, :float, :float ], :void],
              [:glWindowPos4fvMESA, [ :pointer ], :void],
              [:glWindowPos4iMESA, [ :int, :int, :int, :int ], :void],
              [:glWindowPos4ivMESA, [ :pointer ], :void],
              [:glWindowPos4sMESA, [ :short, :short, :short, :short ], :void],
              [:glWindowPos4svMESA, [ :pointer ], :void]
  end
end