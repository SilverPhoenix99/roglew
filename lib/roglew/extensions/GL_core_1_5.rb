module Roglew
  module GL
    ARRAY_BUFFER                         = 0x8892
    ARRAY_BUFFER_BINDING                 = 0x8894
    BUFFER_ACCESS                        = 0x88BB
    BUFFER_MAP_POINTER                   = 0x88BD
    BUFFER_MAPPED                        = 0x88BC
    BUFFER_SIZE                          = 0x8764
    BUFFER_USAGE                         = 0x8765
    COLOR_ARRAY_BUFFER_BINDING           = 0x8898
    CURRENT_FOG_COORD                    = CURRENT_FOG_COORDINATE
    CURRENT_QUERY                        = 0x8865
    DYNAMIC_COPY                         = 0x88EA
    DYNAMIC_DRAW                         = 0x88E8
    DYNAMIC_READ                         = 0x88E9
    EDGE_FLAG_ARRAY_BUFFER_BINDING       = 0x889B
    ELEMENT_ARRAY_BUFFER                 = 0x8893
    ELEMENT_ARRAY_BUFFER_BINDING         = 0x8895
    FOG_COORD                            = FOG_COORDINATE
    FOG_COORD_ARRAY                      = FOG_COORDINATE_ARRAY
    FOG_COORD_ARRAY_BUFFER_BINDING       = FOG_COORDINATE_ARRAY_BUFFER_BINDING
    FOG_COORD_ARRAY_POINTER              = FOG_COORDINATE_ARRAY_POINTER
    FOG_COORD_ARRAY_STRIDE               = FOG_COORDINATE_ARRAY_STRIDE
    FOG_COORD_ARRAY_TYPE                 = FOG_COORDINATE_ARRAY_TYPE
    FOG_COORD_SRC                        = FOG_COORDINATE_SOURCE
    FOG_COORDINATE_ARRAY_BUFFER_BINDING  = 0x889D
    INDEX_ARRAY_BUFFER_BINDING           = 0x8899
    NORMAL_ARRAY_BUFFER_BINDING          = 0x8897
    QUERY_COUNTER_BITS                   = 0x8864
    QUERY_RESULT                         = 0x8866
    QUERY_RESULT_AVAILABLE               = 0x8867
    READ_ONLY                            = 0x88B8
    READ_WRITE                           = 0x88BA
    SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C
    SRC0_ALPHA                           = SOURCE0_ALPHA
    SRC0_RGB                             = SOURCE0_RGB
    SRC1_ALPHA                           = SOURCE1_ALPHA
    SRC1_RGB                             = SOURCE1_RGB
    SRC2_ALPHA                           = SOURCE2_ALPHA
    SRC2_RGB                             = SOURCE2_RGB
    STATIC_COPY                          = 0x88E6
    STATIC_DRAW                          = 0x88E4
    STATIC_READ                          = 0x88E5
    STREAM_COPY                          = 0x88E2
    STREAM_DRAW                          = 0x88E0
    STREAM_READ                          = 0x88E1
    TEXTURE_COORD_ARRAY_BUFFER_BINDING   = 0x889A
    VERTEX_ARRAY_BUFFER_BINDING          = 0x8896
    VERTEX_ATTRIB_ARRAY_BUFFER_BINDING   = 0x889F
    WEIGHT_ARRAY_BUFFER_BINDING          = 0x889E
    WRITE_ONLY                           = 0x88B9
  end
end

module GL_core_1_5
  module RenderContext
    include Roglew::GLExtension

    functions [:glBeginQuery, [ :uint, :uint ], :void],
              [:glBindBuffer, [ :uint, :uint ], :void],
              [:glBufferData, [ :uint, :size_t, :pointer, :uint ], :void],
              [:glBufferSubData, [ :uint, :size_t, :size_t, :pointer ], :void],
              [:glDeleteBuffers, [ :int, :pointer ], :void],
              [:glDeleteQueries, [ :int, :pointer ], :void],
              [:glEndQuery, [ :uint ], :void],
              [:glGenBuffers, [ :int, :pointer ], :void],
              [:glGenQueries, [ :int, :pointer ], :void],
              [:glGetBufferParameteriv, [ :uint, :uint, :pointer ], :void],
              [:glGetBufferPointerv, [ :uint, :uint, :pointer ], :void],
              [:glGetBufferSubData, [ :uint, :size_t, :size_t, :pointer ], :void],
              [:glGetQueryiv, [ :uint, :uint, :pointer ], :void],
              [:glGetQueryObjectiv, [ :uint, :uint, :pointer ], :void],
              [:glGetQueryObjectuiv, [ :uint, :uint, :pointer ], :void],
              [:glIsBuffer, [ :uint ], :uchar],
              [:glIsQuery, [ :uint ], :uchar],
              [:glMapBuffer, [ :uint, :uint ], :pointer],
              [:glUnmapBuffer, [ :uint ], :uchar]
  end
end