module Roglew
  module GL
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED unless const_defined? :ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
    COMPUTE_SHADER                                     = 0x91B9 unless const_defined? :COMPUTE_SHADER
    COMPUTE_SHADER_BIT                                 = 0x00000020 unless const_defined? :COMPUTE_SHADER_BIT
    COMPUTE_WORK_GROUP_SIZE                            = 0x8267 unless const_defined? :COMPUTE_WORK_GROUP_SIZE
    DISPATCH_INDIRECT_BUFFER                           = 0x90EE unless const_defined? :DISPATCH_INDIRECT_BUFFER
    DISPATCH_INDIRECT_BUFFER_BINDING                   = 0x90EF unless const_defined? :DISPATCH_INDIRECT_BUFFER_BINDING
    MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS            = 0x8266 unless const_defined? :MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
    MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                 = 0x8264 unless const_defined? :MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
    MAX_COMPUTE_ATOMIC_COUNTERS                        = 0x8265 unless const_defined? :MAX_COMPUTE_ATOMIC_COUNTERS
    MAX_COMPUTE_IMAGE_UNIFORMS                         = 0x91BD unless const_defined? :MAX_COMPUTE_IMAGE_UNIFORMS
    MAX_COMPUTE_SHARED_MEMORY_SIZE                     = 0x8262 unless const_defined? :MAX_COMPUTE_SHARED_MEMORY_SIZE
    MAX_COMPUTE_TEXTURE_IMAGE_UNITS                    = 0x91BC unless const_defined? :MAX_COMPUTE_TEXTURE_IMAGE_UNITS
    MAX_COMPUTE_UNIFORM_BLOCKS                         = 0x91BB unless const_defined? :MAX_COMPUTE_UNIFORM_BLOCKS
    MAX_COMPUTE_UNIFORM_COMPONENTS                     = 0x8263 unless const_defined? :MAX_COMPUTE_UNIFORM_COMPONENTS
    MAX_COMPUTE_WORK_GROUP_COUNT                       = 0x91BE unless const_defined? :MAX_COMPUTE_WORK_GROUP_COUNT
    MAX_COMPUTE_WORK_GROUP_INVOCATIONS                 = 0x90EB unless const_defined? :MAX_COMPUTE_WORK_GROUP_INVOCATIONS
    MAX_COMPUTE_WORK_GROUP_SIZE                        = 0x91BF unless const_defined? :MAX_COMPUTE_WORK_GROUP_SIZE
    UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER         = 0x90EC unless const_defined? :UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
  end
end

module GL_ARB_compute_shader
  module RenderContext
    include Roglew::GLExtension

    functions [:glDispatchCompute, [ :uint, :uint, :uint ], :void],
              [:glDispatchComputeIndirect, [ :int64 ], :void]
  end
end