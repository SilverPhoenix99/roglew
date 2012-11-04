module GL_ARB_window_pos
  module RenderContext
    include Roglew::GLExtension

    functions [:glWindowPos2dARB, [ :double, :double ], :void],
              [:glWindowPos2dvARB, [ :pointer ], :void],
              [:glWindowPos2fARB, [ :float, :float ], :void],
              [:glWindowPos2fvARB, [ :pointer ], :void],
              [:glWindowPos2iARB, [ :int, :int ], :void],
              [:glWindowPos2ivARB, [ :pointer ], :void],
              [:glWindowPos2sARB, [ :short, :short ], :void],
              [:glWindowPos2svARB, [ :pointer ], :void],
              [:glWindowPos3dARB, [ :double, :double, :double ], :void],
              [:glWindowPos3dvARB, [ :pointer ], :void],
              [:glWindowPos3fARB, [ :float, :float, :float ], :void],
              [:glWindowPos3fvARB, [ :pointer ], :void],
              [:glWindowPos3iARB, [ :int, :int, :int ], :void],
              [:glWindowPos3ivARB, [ :pointer ], :void],
              [:glWindowPos3sARB, [ :short, :short, :short ], :void],
              [:glWindowPos3svARB, [ :pointer ], :void]
  end
end