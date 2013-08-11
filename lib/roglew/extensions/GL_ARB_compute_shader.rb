module Roglew
  module GL
    ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER ||= 0x90ED
    COMPUTE_SHADER                                     ||= 0x91B9
    COMPUTE_SHADER_BIT                                 ||= 0x00000020
    COMPUTE_WORK_GROUP_SIZE                            ||= 0x8267
    DISPATCH_INDIRECT_BUFFER                           ||= 0x90EE
    DISPATCH_INDIRECT_BUFFER_BINDING                   ||= 0x90EF
    MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS            ||= 0x8266
    MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                 ||= 0x8264
    MAX_COMPUTE_ATOMIC_COUNTERS                        ||= 0x8265
    MAX_COMPUTE_IMAGE_UNIFORMS                         ||= 0x91BD
    MAX_COMPUTE_SHARED_MEMORY_SIZE                     ||= 0x8262
    MAX_COMPUTE_TEXTURE_IMAGE_UNITS                    ||= 0x91BC
    MAX_COMPUTE_UNIFORM_BLOCKS                         ||= 0x91BB
    MAX_COMPUTE_UNIFORM_COMPONENTS                     ||= 0x8263
    MAX_COMPUTE_WORK_GROUP_COUNT                       ||= 0x91BE
    MAX_COMPUTE_WORK_GROUP_INVOCATIONS                 ||= 0x90EB
    MAX_COMPUTE_WORK_GROUP_SIZE                        ||= 0x91BF
    UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER         ||= 0x90EC
  end
end

module GL_ARB_compute_shader
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glDispatchCompute, [ :uint, :uint, :uint ], :void],
        [:glDispatchComputeIndirect, [ :int64 ], :void]
    ]
  end
end