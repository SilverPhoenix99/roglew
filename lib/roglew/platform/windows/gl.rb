module Roglew
  module GL
    LIBRARY = "C:\\Windows\\System32\\opengl32.dll".freeze

    def self.platform_module
      WGL
    end
  end
end