module Roglew
  module GL
    RENDERBUFFER_FREE_MEMORY_ATI = 0x87FD unless const_defined? :RENDERBUFFER_FREE_MEMORY_ATI
    TEXTURE_FREE_MEMORY_ATI      = 0x87FC unless const_defined? :TEXTURE_FREE_MEMORY_ATI
    VBO_FREE_MEMORY_ATI          = 0x87FB unless const_defined? :VBO_FREE_MEMORY_ATI
  end
end