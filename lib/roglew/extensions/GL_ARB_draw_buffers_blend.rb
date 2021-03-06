module GL_ARB_draw_buffers_blend
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBlendEquationiARB, [ :uint, :uint ], :void],
        [:glBlendEquationSeparateiARB, [ :uint, :uint, :uint ], :void],
        [:glBlendFunciARB, [ :uint, :uint, :uint ], :void],
        [:glBlendFuncSeparateiARB, [ :uint, :uint, :uint, :uint, :uint ], :void]
    ]
  end
end