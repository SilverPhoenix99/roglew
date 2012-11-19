module Roglew
  module GL
    LIBRARY = 'opengl32'.freeze

    def self.platform_module
      WGL
    end
  end
end