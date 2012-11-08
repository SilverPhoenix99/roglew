module Roglew
  module GL
    POINT_DISTANCE_ATTENUATION_ARB = 0x8129 unless const_defined? :POINT_DISTANCE_ATTENUATION_ARB
    POINT_FADE_THRESHOLD_SIZE_ARB  = 0x8128 unless const_defined? :POINT_FADE_THRESHOLD_SIZE_ARB
    POINT_SIZE_MAX_ARB             = 0x8127 unless const_defined? :POINT_SIZE_MAX_ARB
    POINT_SIZE_MIN_ARB             = 0x8126 unless const_defined? :POINT_SIZE_MIN_ARB
  end
end

module GL_ARB_point_parameters
  module RenderContext
    include Roglew::GLExtension

    functions [:glPointParameterfARB, [ :uint, :float ], :void],
              [:glPointParameterfvARB, [ :uint, :pointer ], :void]
  end
end