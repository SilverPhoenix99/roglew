%w'kernel32
   gdi32
   wgl
   render_handle
'.each { |f| require_relative "windows/#{f}" }