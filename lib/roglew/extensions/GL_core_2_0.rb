%w'gl_constants
shader
shader_program
render_context
'.each { |f| require "roglew/extensions/GL_core_2_0/#{f}" }