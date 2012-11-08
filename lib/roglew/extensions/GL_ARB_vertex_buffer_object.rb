module Roglew
  module GL
    ARRAY_BUFFER_ARB                         = 0x8892 unless const_defined? :ARRAY_BUFFER_ARB
    ARRAY_BUFFER_BINDING_ARB                 = 0x8894 unless const_defined? :ARRAY_BUFFER_BINDING_ARB
    BUFFER_ACCESS_ARB                        = 0x88BB unless const_defined? :BUFFER_ACCESS_ARB
    BUFFER_MAP_POINTER_ARB                   = 0x88BD unless const_defined? :BUFFER_MAP_POINTER_ARB
    BUFFER_MAPPED_ARB                        = 0x88BC unless const_defined? :BUFFER_MAPPED_ARB
    BUFFER_SIZE_ARB                          = 0x8764 unless const_defined? :BUFFER_SIZE_ARB
    BUFFER_USAGE_ARB                         = 0x8765 unless const_defined? :BUFFER_USAGE_ARB
    COLOR_ARRAY_BUFFER_BINDING_ARB           = 0x8898 unless const_defined? :COLOR_ARRAY_BUFFER_BINDING_ARB
    DYNAMIC_COPY_ARB                         = 0x88EA unless const_defined? :DYNAMIC_COPY_ARB
    DYNAMIC_DRAW_ARB                         = 0x88E8 unless const_defined? :DYNAMIC_DRAW_ARB
    DYNAMIC_READ_ARB                         = 0x88E9 unless const_defined? :DYNAMIC_READ_ARB
    EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB       = 0x889B unless const_defined? :EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB
    ELEMENT_ARRAY_BUFFER_ARB                 = 0x8893 unless const_defined? :ELEMENT_ARRAY_BUFFER_ARB
    ELEMENT_ARRAY_BUFFER_BINDING_ARB         = 0x8895 unless const_defined? :ELEMENT_ARRAY_BUFFER_BINDING_ARB
    FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB  = 0x889D unless const_defined? :FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB
    INDEX_ARRAY_BUFFER_BINDING_ARB           = 0x8899 unless const_defined? :INDEX_ARRAY_BUFFER_BINDING_ARB
    NORMAL_ARRAY_BUFFER_BINDING_ARB          = 0x8897 unless const_defined? :NORMAL_ARRAY_BUFFER_BINDING_ARB
    READ_ONLY_ARB                            = 0x88B8 unless const_defined? :READ_ONLY_ARB
    READ_WRITE_ARB                           = 0x88BA unless const_defined? :READ_WRITE_ARB
    SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x889C unless const_defined? :SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB
    STATIC_COPY_ARB                          = 0x88E6 unless const_defined? :STATIC_COPY_ARB
    STATIC_DRAW_ARB                          = 0x88E4 unless const_defined? :STATIC_DRAW_ARB
    STATIC_READ_ARB                          = 0x88E5 unless const_defined? :STATIC_READ_ARB
    STREAM_COPY_ARB                          = 0x88E2 unless const_defined? :STREAM_COPY_ARB
    STREAM_DRAW_ARB                          = 0x88E0 unless const_defined? :STREAM_DRAW_ARB
    STREAM_READ_ARB                          = 0x88E1 unless const_defined? :STREAM_READ_ARB
    TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB   = 0x889A unless const_defined? :TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB
    VERTEX_ARRAY_BUFFER_BINDING_ARB          = 0x8896 unless const_defined? :VERTEX_ARRAY_BUFFER_BINDING_ARB
  end
end

module GL_ARB_vertex_buffer_object
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindBufferARB, [ :uint, :uint ], :void],
              [:glBufferDataARB, [ :uint, :size_t, :pointer, :uint ], :void],
              [:glBufferSubDataARB, [ :uint, :size_t, :size_t, :pointer ], :void],
              [:glDeleteBuffersARB, [ :int, :pointer ], :void],
              [:glGenBuffersARB, [ :int, :pointer ], :void],
              [:glGetBufferParameterivARB, [ :uint, :uint, :pointer ], :void],
              [:glGetBufferPointervARB, [ :uint, :uint, :pointer ], :void],
              [:glGetBufferSubDataARB, [ :uint, :size_t, :size_t, :pointer ], :void],
              [:glIsBufferARB, [ :uint ], :uchar],
              [:glMapBufferARB, [ :uint, :uint ], :pointer],
              [:glUnmapBufferARB, [ :uint ], :uchar]
  end
end

