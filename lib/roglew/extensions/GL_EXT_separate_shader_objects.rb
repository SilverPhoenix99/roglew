module Roglew
  module GL

  end
end

module GL_EXT_separate_shader_objects
  module RenderContext
    include Roglew::GLExtension

    functions [:glActiveProgramEXT, [ :uint ], :void],
              [:glCreateShaderProgramEXT, [ :uint, :string ], :uint],
              [:glUseShaderProgramEXT, [ :uint, :uint ], :void]
  end
end

