module Roglew
  module GL
    ARRAY_BUFFER_ARB                         = 0x8892
    ARRAY_BUFFER_BINDING_ARB                 = 0x8894
    BUFFER_ACCESS_ARB                        = 0x88BB
    BUFFER_MAP_POINTER_ARB                   = 0x88BD
    BUFFER_MAPPED_ARB                        = 0x88BC
    BUFFER_SIZE_ARB                          = 0x8764
    BUFFER_USAGE_ARB                         = 0x8765
    COLOR_ARRAY_BUFFER_BINDING_ARB           = 0x8898
    DYNAMIC_COPY_ARB                         = 0x88EA
    DYNAMIC_DRAW_ARB                         = 0x88E8
    DYNAMIC_READ_ARB                         = 0x88E9
    EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB       = 0x889B
    ELEMENT_ARRAY_BUFFER_ARB                 = 0x8893
    ELEMENT_ARRAY_BUFFER_BINDING_ARB         = 0x8895
    FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB  = 0x889D
    INDEX_ARRAY_BUFFER_BINDING_ARB           = 0x8899
    NORMAL_ARRAY_BUFFER_BINDING_ARB          = 0x8897
    READ_ONLY_ARB                            = 0x88B8
    READ_WRITE_ARB                           = 0x88BA
    SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x889C
    STATIC_COPY_ARB                          = 0x88E6
    STATIC_DRAW_ARB                          = 0x88E4
    STATIC_READ_ARB                          = 0x88E5
    STREAM_COPY_ARB                          = 0x88E2
    STREAM_DRAW_ARB                          = 0x88E0
    STREAM_READ_ARB                          = 0x88E1
    TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB   = 0x889A
    VERTEX_ARRAY_BUFFER_BINDING_ARB          = 0x8896
    VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB   = 0x889F
    WEIGHT_ARRAY_BUFFER_BINDING_ARB          = 0x889E
    WRITE_ONLY_ARB                           = 0x88B9
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

