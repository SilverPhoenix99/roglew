%w'renderbuffer_context
renderbuffer
framebuffer_context
framebuffer
render_context
'.each { |f| require "roglew/extensions/GL_EXT_framebuffer_object/#{f}" }