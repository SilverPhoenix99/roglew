module Roglew
  class TextureContext
    include Roglew::BaseContext(:texture)

    attr_accessor :target, :level


  end
end