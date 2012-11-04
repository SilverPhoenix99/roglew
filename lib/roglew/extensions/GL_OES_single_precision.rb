module GL_OES_single_precision
  module RenderContext
    include Roglew::GLExtension

    functions [:glClearDepthfOES, [ :double ], :void],
              [:glClipPlanefOES, [ :uint, :pointer ], :void],
              [:glDepthRangefOES, [ :float, :float ], :void],
              [:glFrustumfOES, [ :float, :float, :float, :float, :float, :float ], :void],
              [:glGetClipPlanefOES, [ :uint, :pointer ], :void],
              [:glOrthofOES, [ :float, :float, :float, :float, :float, :float ], :void]
  end
end