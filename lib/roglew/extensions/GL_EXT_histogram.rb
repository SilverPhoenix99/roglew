module Roglew
  module GL
    HISTOGRAM_ALPHA_SIZE_EXT     = 0x802B unless const_defined? :HISTOGRAM_ALPHA_SIZE_EXT
    HISTOGRAM_BLUE_SIZE_EXT      = 0x802A unless const_defined? :HISTOGRAM_BLUE_SIZE_EXT
    HISTOGRAM_EXT                = 0x8024 unless const_defined? :HISTOGRAM_EXT
    HISTOGRAM_FORMAT_EXT         = 0x8027 unless const_defined? :HISTOGRAM_FORMAT_EXT
    HISTOGRAM_GREEN_SIZE_EXT     = 0x8029 unless const_defined? :HISTOGRAM_GREEN_SIZE_EXT
    HISTOGRAM_LUMINANCE_SIZE_EXT = 0x802C unless const_defined? :HISTOGRAM_LUMINANCE_SIZE_EXT
    HISTOGRAM_RED_SIZE_EXT       = 0x8028 unless const_defined? :HISTOGRAM_RED_SIZE_EXT
    HISTOGRAM_SINK_EXT           = 0x802D unless const_defined? :HISTOGRAM_SINK_EXT
    HISTOGRAM_WIDTH_EXT          = 0x8026 unless const_defined? :HISTOGRAM_WIDTH_EXT
    MINMAX_EXT                   = 0x802E unless const_defined? :MINMAX_EXT
    MINMAX_FORMAT_EXT            = 0x802F unless const_defined? :MINMAX_FORMAT_EXT
    MINMAX_SINK_EXT              = 0x8030 unless const_defined? :MINMAX_SINK_EXT
    PROXY_HISTOGRAM_EXT          = 0x8025 unless const_defined? :PROXY_HISTOGRAM_EXT
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

