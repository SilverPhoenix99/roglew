module GLX_MESA_agp_offset
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      #unsigned int glXGetAGPOffsetMESA(const void* pointer)
      [:glXGetAGPOffsetMESA, [:pointer], :uint]
    ]
  end
end