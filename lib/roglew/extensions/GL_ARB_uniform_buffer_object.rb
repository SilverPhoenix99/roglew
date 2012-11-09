module Roglew
  module GL
    ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH        ||= 0x8A35
    ACTIVE_UNIFORM_BLOCKS                       ||= 0x8A36
    INVALID_INDEX                               ||= 0xFFFFFFFF
    MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS    ||= 0x8A33
    MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS    ||= 0x8A32
    MAX_COMBINED_UNIFORM_BLOCKS                 ||= 0x8A2E
    MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS      ||= 0x8A31
    MAX_FRAGMENT_UNIFORM_BLOCKS                 ||= 0x8A2D
    MAX_GEOMETRY_UNIFORM_BLOCKS                 ||= 0x8A2C
    MAX_UNIFORM_BLOCK_SIZE                      ||= 0x8A30
    MAX_UNIFORM_BUFFER_BINDINGS                 ||= 0x8A2F
    MAX_VERTEX_UNIFORM_BLOCKS                   ||= 0x8A2B
    UNIFORM_ARRAY_STRIDE                        ||= 0x8A3C
    UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES        ||= 0x8A43
    UNIFORM_BLOCK_ACTIVE_UNIFORMS               ||= 0x8A42
    UNIFORM_BLOCK_BINDING                       ||= 0x8A3F
    UNIFORM_BLOCK_DATA_SIZE                     ||= 0x8A40
    UNIFORM_BLOCK_INDEX                         ||= 0x8A3A
    UNIFORM_BLOCK_NAME_LENGTH                   ||= 0x8A41
    UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER ||= 0x8A46
    UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER ||= 0x8A45
    UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER   ||= 0x8A44
    UNIFORM_BUFFER                              ||= 0x8A11
    UNIFORM_BUFFER_BINDING                      ||= 0x8A28
    UNIFORM_BUFFER_OFFSET_ALIGNMENT             ||= 0x8A34
    UNIFORM_BUFFER_SIZE                         ||= 0x8A2A
    UNIFORM_BUFFER_START                        ||= 0x8A29
    UNIFORM_IS_ROW_MAJOR                        ||= 0x8A3E
    UNIFORM_MATRIX_STRIDE                       ||= 0x8A3D
    UNIFORM_NAME_LENGTH                         ||= 0x8A39
    UNIFORM_OFFSET                              ||= 0x8A3B
    UNIFORM_SIZE                                ||= 0x8A38
    UNIFORM_TYPE                                ||= 0x8A37
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

