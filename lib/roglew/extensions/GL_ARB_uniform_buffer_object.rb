module Roglew
  module GL
    ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH        = 0x8A35 unless const_defined? :ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
    ACTIVE_UNIFORM_BLOCKS                       = 0x8A36 unless const_defined? :ACTIVE_UNIFORM_BLOCKS
    INVALID_INDEX                               = 0xFFFFFFFF unless const_defined? :INVALID_INDEX
    MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS    = 0x8A33 unless const_defined? :MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
    MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS    = 0x8A32 unless const_defined? :MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
    MAX_COMBINED_UNIFORM_BLOCKS                 = 0x8A2E unless const_defined? :MAX_COMBINED_UNIFORM_BLOCKS
    MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS      = 0x8A31 unless const_defined? :MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
    MAX_FRAGMENT_UNIFORM_BLOCKS                 = 0x8A2D unless const_defined? :MAX_FRAGMENT_UNIFORM_BLOCKS
    MAX_GEOMETRY_UNIFORM_BLOCKS                 = 0x8A2C unless const_defined? :MAX_GEOMETRY_UNIFORM_BLOCKS
    MAX_UNIFORM_BLOCK_SIZE                      = 0x8A30 unless const_defined? :MAX_UNIFORM_BLOCK_SIZE
    MAX_UNIFORM_BUFFER_BINDINGS                 = 0x8A2F unless const_defined? :MAX_UNIFORM_BUFFER_BINDINGS
    MAX_VERTEX_UNIFORM_BLOCKS                   = 0x8A2B unless const_defined? :MAX_VERTEX_UNIFORM_BLOCKS
    UNIFORM_ARRAY_STRIDE                        = 0x8A3C unless const_defined? :UNIFORM_ARRAY_STRIDE
    UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES        = 0x8A43 unless const_defined? :UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
    UNIFORM_BLOCK_ACTIVE_UNIFORMS               = 0x8A42 unless const_defined? :UNIFORM_BLOCK_ACTIVE_UNIFORMS
    UNIFORM_BLOCK_BINDING                       = 0x8A3F unless const_defined? :UNIFORM_BLOCK_BINDING
    UNIFORM_BLOCK_DATA_SIZE                     = 0x8A40 unless const_defined? :UNIFORM_BLOCK_DATA_SIZE
    UNIFORM_BLOCK_INDEX                         = 0x8A3A unless const_defined? :UNIFORM_BLOCK_INDEX
    UNIFORM_BLOCK_NAME_LENGTH                   = 0x8A41 unless const_defined? :UNIFORM_BLOCK_NAME_LENGTH
    UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46 unless const_defined? :UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
    UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45 unless const_defined? :UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
    UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER   = 0x8A44 unless const_defined? :UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
    UNIFORM_BUFFER                              = 0x8A11 unless const_defined? :UNIFORM_BUFFER
    UNIFORM_BUFFER_BINDING                      = 0x8A28 unless const_defined? :UNIFORM_BUFFER_BINDING
    UNIFORM_BUFFER_OFFSET_ALIGNMENT             = 0x8A34 unless const_defined? :UNIFORM_BUFFER_OFFSET_ALIGNMENT
    UNIFORM_BUFFER_SIZE                         = 0x8A2A unless const_defined? :UNIFORM_BUFFER_SIZE
    UNIFORM_BUFFER_START                        = 0x8A29 unless const_defined? :UNIFORM_BUFFER_START
    UNIFORM_IS_ROW_MAJOR                        = 0x8A3E unless const_defined? :UNIFORM_IS_ROW_MAJOR
    UNIFORM_MATRIX_STRIDE                       = 0x8A3D unless const_defined? :UNIFORM_MATRIX_STRIDE
    UNIFORM_NAME_LENGTH                         = 0x8A39 unless const_defined? :UNIFORM_NAME_LENGTH
    UNIFORM_OFFSET                              = 0x8A3B unless const_defined? :UNIFORM_OFFSET
    UNIFORM_SIZE                                = 0x8A38 unless const_defined? :UNIFORM_SIZE
    UNIFORM_TYPE                                = 0x8A37 unless const_defined? :UNIFORM_TYPE
  end
end

module GL_ARB_uniform_buffer_object
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindBufferBase, [ :uint, :uint, :uint ], :void],
              [:glBindBufferRange, [ :uint, :uint, :uint, :int64, :int64 ], :void],
              [:glGetActiveUniformBlockiv, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetActiveUniformBlockName, [ :uint, :uint, :int, :pointer, :string ], :void],
              [:glGetActiveUniformName, [ :uint, :uint, :int, :pointer, :string ], :void],
              [:glGetActiveUniformsiv, [ :uint, :int, :pointer, :uint, :pointer ], :void],
              [:glGetIntegeri_v, [ :uint, :uint, :pointer ], :void],
              [:glGetUniformBlockIndex, [ :uint, :string ], :uint],
              [:glGetUniformIndices, [ :uint, :int, :pointer, :pointer ], :void],
              [:glUniformBlockBinding, [ :uint, :uint, :uint ], :void]
  end
end

