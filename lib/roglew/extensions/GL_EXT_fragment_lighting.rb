module Roglew
  module GL
    CURRENT_RASTER_NORMAL_EXT                     ||= 0x8406
    FRAGMENT_COLOR_MATERIAL_EXT                   ||= 0x8401
    FRAGMENT_COLOR_MATERIAL_FACE_EXT              ||= 0x8402
    FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT         ||= 0x8403
    FRAGMENT_LIGHT_MODEL_AMBIENT_EXT              ||= 0x840A
    FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT         ||= 0x8408
    FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT ||= 0x840B
    FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT             ||= 0x8409
    FRAGMENT_LIGHT0_EXT                           ||= 0x840C
    FRAGMENT_LIGHT7_EXT                           ||= 0x8413
    FRAGMENT_LIGHTING_EXT                         ||= 0x8400
    LIGHT_ENV_MODE_EXT                            ||= 0x8407
    MAX_ACTIVE_LIGHTS_EXT                         ||= 0x8405
    MAX_FRAGMENT_LIGHTS_EXT                       ||= 0x8404
  end
end

module GL_EXT_fragment_lighting
  module RenderContext
    include Roglew::GLExtension

    functions [:glFragmentColorMaterialEXT, [ :uint, :uint ], :void],
              [:glFragmentLightfEXT, [ :uint, :uint, :float ], :void],
              [:glFragmentLightfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glFragmentLightiEXT, [ :uint, :uint, :int ], :void],
              [:glFragmentLightivEXT, [ :uint, :uint, :pointer ], :void],
              [:glFragmentLightModelfEXT, [ :uint, :float ], :void],
              [:glFragmentLightModelfvEXT, [ :uint, :pointer ], :void],
              [:glFragmentLightModeliEXT, [ :uint, :int ], :void],
              [:glFragmentLightModelivEXT, [ :uint, :pointer ], :void],
              [:glFragmentMaterialfEXT, [ :uint, :uint, :float ], :void],
              [:glFragmentMaterialfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glFragmentMaterialiEXT, [ :uint, :uint, :int ], :void],
              [:glFragmentMaterialivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentLightfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentLightivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentMaterialfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetFragmentMaterialivEXT, [ :uint, :uint, :pointer ], :void],
              [:glLightEnviEXT, [ :uint, :int ], :void]
  end
end

