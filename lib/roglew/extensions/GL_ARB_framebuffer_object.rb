%w'gl_constants
renderbuffer_contexts
renderbuffer
framebuffer_contexts
framebuffer
render_context
'.each { |f| require "roglew/extensions/GL_ARB_framebuffer_object/#{f}" }