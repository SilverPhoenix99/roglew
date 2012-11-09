module Roglew
  module GL
    NAMED_STRING_LENGTH_ARB ||= 0x8DE9
    NAMED_STRING_TYPE_ARB   ||= 0x8DEA
    SHADER_INCLUDE_ARB      ||= 0x8DAE
  end
end

module GL_ARB_shading_language_include
  module RenderContext
    include Roglew::GLExtension

    functions [:glCompileShaderIncludeARB, [ :uint, :int, :pointer, :pointer ], :void],
              [:glDeleteNamedStringARB, [ :int, :string ], :void],
              [:glGetNamedStringARB, [ :int, :string, :int, :pointer, :string ], :void],
              [:glGetNamedStringivARB, [ :int, :string, :uint, :pointer ], :void],
              [:glIsNamedStringARB, [ :int, :string ], :uchar],
              [:glNamedStringARB, [ :uint, :int, :string, :int, :string ], :void]
  end
end