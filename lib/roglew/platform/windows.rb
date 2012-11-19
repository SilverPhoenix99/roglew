%w'kernel32
   gdi32
   wgl
   render_context
'.each { |f| require "roglew/platform/windows/#{f}" }