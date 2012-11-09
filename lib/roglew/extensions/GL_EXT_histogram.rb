module Roglew
  module GL
    HISTOGRAM_ALPHA_SIZE_EXT     ||= 0x802B
    HISTOGRAM_BLUE_SIZE_EXT      ||= 0x802A
    HISTOGRAM_EXT                ||= 0x8024
    HISTOGRAM_FORMAT_EXT         ||= 0x8027
    HISTOGRAM_GREEN_SIZE_EXT     ||= 0x8029
    HISTOGRAM_LUMINANCE_SIZE_EXT ||= 0x802C
    HISTOGRAM_RED_SIZE_EXT       ||= 0x8028
    HISTOGRAM_SINK_EXT           ||= 0x802D
    HISTOGRAM_WIDTH_EXT          ||= 0x8026
    MINMAX_EXT                   ||= 0x802E
    MINMAX_FORMAT_EXT            ||= 0x802F
    MINMAX_SINK_EXT              ||= 0x8030
    PROXY_HISTOGRAM_EXT          ||= 0x8025
  end
end

module GL_EXT_histogram
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetHistogramEXT, [ :uint, :uchar, :uint, :uint, :pointer ], :void],
              [:glGetHistogramParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetHistogramParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetMinmaxEXT, [ :uint, :uchar, :uint, :uint, :pointer ], :void],
              [:glGetMinmaxParameterfvEXT, [ :uint, :uint, :pointer ], :void],
              [:glGetMinmaxParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glHistogramEXT, [ :uint, :int, :uint, :uchar ], :void],
              [:glMinmaxEXT, [ :uint, :uint, :uchar ], :void],
              [:glResetHistogramEXT, [ :uint ], :void],
              [:glResetMinmaxEXT, [ :uint ], :void]
  end
end

