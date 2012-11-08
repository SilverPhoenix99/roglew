module Roglew
  module GL
    NUM_SAMPLE_COUNTS = 0x9380 unless const_defined? :NUM_SAMPLE_COUNTS
  end
end

module GL_ARB_internalformat_query
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetInternalformativ, [ :uint, :uint, :uint, :int, :pointer ], :void]
  end
end