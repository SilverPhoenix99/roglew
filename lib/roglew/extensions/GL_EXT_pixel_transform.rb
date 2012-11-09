module Roglew
  module GL
    AVERAGE_EXT                            ||= 0x8335
    CUBIC_EXT                              ||= 0x8334
    MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT ||= 0x8337
    PIXEL_CUBIC_WEIGHT_EXT                 ||= 0x8333
    PIXEL_MAG_FILTER_EXT                   ||= 0x8331
    PIXEL_MIN_FILTER_EXT                   ||= 0x8332
    PIXEL_TRANSFORM_2D_EXT                 ||= 0x8330
    PIXEL_TRANSFORM_2D_MATRIX_EXT          ||= 0x8338
    PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT     ||= 0x8336
  end
end

module GL_EXT_pixel_transform
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetPixelTransformParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetPixelTransformParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glPixelTransformParameterfEXT, [ :uint, :uint, :float ], :void],
              [:glPixelTransformParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glPixelTransformParameteriEXT, [ :uint, :uint, :int ], :void],
              [:glPixelTransformParameterivEXT, [ :uint, :uint, :pointer ], :void]
  end
end

