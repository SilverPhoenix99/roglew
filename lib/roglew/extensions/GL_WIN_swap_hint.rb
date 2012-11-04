module GL_WIN_swap_hint
  module RenderContext
    include Roglew::GLExtension

    functions [:glAddSwapHintRectWIN, [ :int, :int, :int, :int ], :void]
  end
end