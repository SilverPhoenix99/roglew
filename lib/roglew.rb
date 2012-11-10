#Raw Glue - the Ruby OpenGL and Extensions Wrapper

module Roglew
  VERSION = '0.1.0'
end

#external dependencies
%w'
  set
  ffi
  facets/kernel/ergo
  facets/module/module_load
'.each { |f| require f }

#internal files
%w'
  contexts/base
  contexts/deferred
  contexts/immediate
  ext/ffi_struct_ext
  errors
  native/kernel32
  native/gdi32
  contextual
  gl_extension
  gl_object
  native/native_object
  native/gl
  render_context
'.each { |f| require "roglew/#{f}" }