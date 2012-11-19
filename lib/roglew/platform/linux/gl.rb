module Roglew
  module GL
    LIBRARY = 'libGL.so.1'.freeze

    def self.platform_module
      GLX
    end
  end
end