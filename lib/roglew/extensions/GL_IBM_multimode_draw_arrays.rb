module GL_IBM_multimode_draw_arrays
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glMultiModeDrawArraysIBM, [ :pointer, :pointer, :pointer, :int, :int ], :void],
        [:glMultiModeDrawElementsIBM, [ :pointer, :pointer, :uint, :pointer, :int, :int ], :void]
    ]
  end
end