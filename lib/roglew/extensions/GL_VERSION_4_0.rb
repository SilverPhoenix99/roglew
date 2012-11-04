module Roglew
  module GL
    FRAGMENT_INTERPOLATION_OFFSET_BITS    = 0x8E5D
    GEOMETRY_SHADER_INVOCATIONS           = 0x887F
    INT_SAMPLER_CUBE_MAP_ARRAY            = 0x900E
    MAX_FRAGMENT_INTERPOLATION_OFFSET     = 0x8E5C
    MAX_GEOMETRY_SHADER_INVOCATIONS       = 0x8E5A
    MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS = 0x8F9F
    MAX_PROGRAM_TEXTURE_GATHER_OFFSET     = 0x8E5F
    MIN_FRAGMENT_INTERPOLATION_OFFSET     = 0x8E5B
    MIN_PROGRAM_TEXTURE_GATHER_OFFSET     = 0x8E5E
    MIN_SAMPLE_SHADING_VALUE              = 0x8C37
    PROXY_TEXTURE_CUBE_MAP_ARRAY          = 0x900B
    SAMPLE_SHADING                        = 0x8C36
    SAMPLER_CUBE_MAP_ARRAY                = 0x900C
    SAMPLER_CUBE_MAP_ARRAY_SHADOW         = 0x900D
    TEXTURE_BINDING_CUBE_MAP_ARRAY        = 0x900A
    TEXTURE_CUBE_MAP_ARRAY                = 0x9009
    UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY   = 0x900F
  end
end

module GL_VERSION_4_0
  module RenderContext
    include Roglew::GLExtension

    functions [:glBlendEquationi, [ :uint, :uint ], :void],
              [:glBlendEquationSeparatei, [ :uint, :uint, :uint ], :void],
              [:glBlendFunci, [ :uint, :uint, :uint ], :void],
              [:glBlendFuncSeparatei, [ :uint, :uint, :uint, :uint, :uint ], :void],
              [:glMinSampleShading, [ :float ], :void]
  end
end