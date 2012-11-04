module GL_EXT_multi_draw_arrays
  module RenderContext
    include Roglew::GLExtension

    functions [:glMultiDrawArraysEXT, [ :uint, :pointer, :pointer, :int ], :void],
              [:glMultiDrawElementsEXT, [ :uint, :pointer, :uint, :pointer, :int ], :void]
  end
end