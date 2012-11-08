module Roglew
  module GL
    SAMPLER_BINDING = 0x8919 unless const_defined? :SAMPLER_BINDING
  end
end

module GL_ARB_sampler_objects
  module RenderContext
    include Roglew::GLExtension

    functions [:glBindSampler, [ :uint, :uint ], :void],
              [:glDeleteSamplers, [ :int, :pointer ], :void],
              [:glGenSamplers, [ :int, :pointer ], :void],
              [:glGetSamplerParameterfv, [ :uint, :uint, :pointer ], :void],
              [:glGetSamplerParameterIiv, [ :uint, :uint, :pointer ], :void],
              [:glGetSamplerParameterIuiv, [ :uint, :uint, :pointer ], :void],
              [:glGetSamplerParameteriv, [ :uint, :uint, :pointer ], :void],
              [:glIsSampler, [ :uint ], :uchar],
              [:glSamplerParameterf, [ :uint, :uint, :float ], :void],
              [:glSamplerParameterfv, [ :uint, :uint, :pointer ], :void],
              [:glSamplerParameteri, [ :uint, :uint, :int ], :void],
              [:glSamplerParameterIiv, [ :uint, :uint, :pointer ], :void],
              [:glSamplerParameterIuiv, [ :uint, :uint, :pointer ], :void],
              [:glSamplerParameteriv, [ :uint, :uint, :pointer ], :void]
  end
end

