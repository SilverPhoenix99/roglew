module Roglew
  module GL
    CURRENT_RASTER_NORMAL_EXT                     = 0x8406 unless const_defined? :CURRENT_RASTER_NORMAL_EXT
    FRAGMENT_COLOR_MATERIAL_EXT                   = 0x8401 unless const_defined? :FRAGMENT_COLOR_MATERIAL_EXT
    FRAGMENT_COLOR_MATERIAL_FACE_EXT              = 0x8402 unless const_defined? :FRAGMENT_COLOR_MATERIAL_FACE_EXT
    FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT         = 0x8403 unless const_defined? :FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT
    FRAGMENT_LIGHT_MODEL_AMBIENT_EXT              = 0x840A unless const_defined? :FRAGMENT_LIGHT_MODEL_AMBIENT_EXT
    FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT         = 0x8408 unless const_defined? :FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT
    FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT = 0x840B unless const_defined? :FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT
    FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT             = 0x8409 unless const_defined? :FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT
    FRAGMENT_LIGHT0_EXT                           = 0x840C unless const_defined? :FRAGMENT_LIGHT0_EXT
    FRAGMENT_LIGHT7_EXT                           = 0x8413 unless const_defined? :FRAGMENT_LIGHT7_EXT
    FRAGMENT_LIGHTING_EXT                         = 0x8400 unless const_defined? :FRAGMENT_LIGHTING_EXT
    LIGHT_ENV_MODE_EXT                            = 0x8407 unless const_defined? :LIGHT_ENV_MODE_EXT
    MAX_ACTIVE_LIGHTS_EXT                         = 0x8405 unless const_defined? :MAX_ACTIVE_LIGHTS_EXT
    MAX_FRAGMENT_LIGHTS_EXT                       = 0x8404 unless const_defined? :MAX_FRAGMENT_LIGHTS_EXT
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

