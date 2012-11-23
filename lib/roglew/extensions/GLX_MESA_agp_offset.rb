module GLX_MESA_agp_offset
  module RenderContext
    include Roglew::GLExtension

              #unsigned int glXGetAGPOffsetMESA(const void* pointer)
    functions [:glXGetAGPOffsetMESA, [:pointer], :uint]
  end
end