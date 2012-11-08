module Roglew
  module GL
    CONTINUOUS_AMD                  =  0x9007 unless const_defined? :CONTINUOUS_AMD
    DISCRETE_AMD                    =  0x9006 unless const_defined? :DISCRETE_AMD
    INT_SAMPLER_BUFFER_AMD          =  0x9002 unless const_defined? :INT_SAMPLER_BUFFER_AMD
    SAMPLER_BUFFER_AMD              =  0x9001 unless const_defined? :SAMPLER_BUFFER_AMD
    TESSELLATION_FACTOR_AMD         =  0x9005 unless const_defined? :TESSELLATION_FACTOR_AMD
    TESSELLATION_MODE_AMD           =  0x9004 unless const_defined? :TESSELLATION_MODE_AMD
    UNSIGNED_INT_SAMPLER_BUFFER_AMD =  0x9003 unless const_defined? :UNSIGNED_INT_SAMPLER_BUFFER_AMD
  end
end

module GL_AMD_vertex_shader_tessellator
  module RenderContext
    include Roglew::GLExtension

    functions [:glTessellationFactorAMD, [ :float ], :void],
              [:glTessellationModeAMD, [ :uint ], :void]
  end
end