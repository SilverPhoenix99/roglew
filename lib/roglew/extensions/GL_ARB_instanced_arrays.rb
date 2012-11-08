module Roglew
  module GL
    VERTEX_ATTRIB_ARRAY_DIVISOR_ARB = 0x88FE unless const_defined? :VERTEX_ATTRIB_ARRAY_DIVISOR_ARB
  end
end

module GL_ARB_instanced_arrays
  module RenderContext
    include Roglew::GLExtension

    functions [:glDrawArraysInstancedARB, [ :uint, :int, :int, :int ], :void],
              [:glDrawElementsInstancedARB, [ :uint, :int, :uint, :pointer, :int ], :void],
              [:glVertexAttribDivisorARB, [ :uint, :uint ], :void]
  end
end