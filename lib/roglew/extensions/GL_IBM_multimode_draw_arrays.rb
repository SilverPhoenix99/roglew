module GL_IBM_multimode_draw_arrays
  module RenderContext
    include Roglew::GLExtension

    functions [:glMultiModeDrawArraysIBM, [ :pointer, :pointer, :pointer, :int, :int ], :void],
              [:glMultiModeDrawElementsIBM, [ :pointer, :pointer, :uint, :pointer, :int, :int ], :void]
  end
end