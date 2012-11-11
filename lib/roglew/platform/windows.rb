%w'kernel32
   gdi32
   wgl
'.each { |f| require "roglew/platform/windows/#{f}" }