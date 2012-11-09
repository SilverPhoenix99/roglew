module Roglew
  module GL
    MAX_COMBINED_SHADER_OUTPUT_RESOURCES      ||= 0x8F39
    MAX_COMBINED_SHADER_STORAGE_BLOCKS        ||= 0x90DC
    MAX_COMPUTE_SHADER_STORAGE_BLOCKS         ||= 0x90DB
    MAX_FRAGMENT_SHADER_STORAGE_BLOCKS        ||= 0x90DA
    MAX_GEOMETRY_SHADER_STORAGE_BLOCKS        ||= 0x90D7
    MAX_SHADER_STORAGE_BLOCK_SIZE             ||= 0x90DE
    MAX_SHADER_STORAGE_BUFFER_BINDINGS        ||= 0x90DD
    MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS    ||= 0x90D8
    MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS ||= 0x90D9
    MAX_VERTEX_SHADER_STORAGE_BLOCKS          ||= 0x90D6
    SHADER_STORAGE_BARRIER_BIT                ||= 0x2000
    SHADER_STORAGE_BUFFER                     ||= 0x90D2
    SHADER_STORAGE_BUFFER_BINDING             ||= 0x90D3
    SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT    ||= 0x90DF
    SHADER_STORAGE_BUFFER_SIZE                ||= 0x90D5
    SHADER_STORAGE_BUFFER_START               ||= 0x90D4
  end
end

module GL_ARB_shader_storage_buffer_object
  module RenderContext
    include Roglew::GLExtension

    functions [:glShaderStorageBlockBinding, [ :uint, :uint, :uint ], :void]
  end
end

