module GL_EXT_gpu_program_parameters
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glProgramEnvParameters4fvEXT, [ :uint, :uint, :int, :pointer ], :void],
        [:glProgramLocalParameters4fvEXT, [ :uint, :uint, :int, :pointer ], :void]
    ]
  end
end