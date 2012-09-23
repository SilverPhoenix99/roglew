%w'gl_constants
renderbuffer_context
renderbuffer
framebuffer_context
framebuffer

on_load
'.each { |f| require "roglew/extensions/GL_ARB_framebuffer_object/#{f}" }