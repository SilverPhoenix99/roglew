module GL_EXT_gpu_program_parameters
  module RenderContext
    include Roglew::GLExtension

    functions [:glProgramEnvParameters4fvEXT, [ :uint, :uint, :int, :pointer ], :void],
              [:glProgramLocalParameters4fvEXT, [ :uint, :uint, :int, :pointer ], :void]
  end
end