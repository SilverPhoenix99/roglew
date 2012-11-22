module Roglew
  module GL
    LIBRARY ||= begin
      `ldconfig -p | grep -i libgl.so`.split("\n").map { |s| s.gsub(/^.+=>/, '').strip }.first
    end

    def self.platform_module
      GLX
    end
  end
end