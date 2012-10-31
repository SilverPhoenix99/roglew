module GL_SGIX_fragment_specular_lighting
  module RenderContext
    include GLExtension

    functions [:glFragmentColorMaterialSGIX, [ :uint, :uint ], :void],
              [:glFragmentLightfSGIX, [ :uint, :uint, :float ], :void],
              [:glFragmentLightfvSGIX, [ :uint, :uint, :pointer ], :void],
              [:glFragmentLightiSGIX, [ :uint, :uint, :int ], :void],
              [:glFragmentLightivSGIX, [ :uint, :uint, :pointer ], :void],
              [:glFragmentLightModelfSGIX, [ :uint, :float ], :void],
              [:glFragmentLightModelfvSGIX, [ :uint, :pointer ], :void],
              [:glFragmentLightModeliSGIX, [ :uint, :int ], :void],
              [:glFragmentLightModelivSGIX, [ :uint, :pointer ], :void],
              [:glFragmentMaterialfSGIX, [ :uint, :uint, :float ], :void],
              [:glFragmentMaterialfvSGIX, [ :uint, :uint, :pointer ], :void],
              [:glFragmentMaterialiSGIX, [ :uint, :uint, :int ], :void],
              [:glFragmentMaterialivSGIX, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentLightfvSGIX, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentLightivSGIX, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentMaterialfvSGIX, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentMaterialivSGIX, [ :uint, :uint, :pointer ], :void]
  end
end