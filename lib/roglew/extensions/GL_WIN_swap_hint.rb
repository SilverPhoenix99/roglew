module GL_WIN_swap_hint
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
      [:glAddSwapHintRectWIN, [ :int, :int, :int, :int ], :void]
    ]
  end
end