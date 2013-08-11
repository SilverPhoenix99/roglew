module Roglew
  module GL
	ACTIVE_PROGRAM_EXT ||= 0x8B8D
  end
end

module GL_EXT_separate_shader_objects
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glActiveProgramEXT, [ :uint ], :void],
        [:glCreateShaderProgramEXT, [ :uint, :string ], :uint],
        [:glUseShaderProgramEXT, [ :uint, :uint ], :void]
    ]
  end
end

