%w'kernel32
   gdi32
   wgl
   render_handle
'.each { |f| require "roglew/platform/windows/#{f}" }