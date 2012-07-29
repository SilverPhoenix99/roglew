#Raw Glue - the Ruby OpenGL and Extensions Wrapper

module Roglew
  VERSION = '0.0.0'
end

#external dependencies
%w'set

ffi
facets/kernel/ergo
facets/module/module_load
'.each { |f| require f }

%w'ext/ffi_struct_ext
errors
gl_constants
wgl_constants
native/win32ffi
native/kernel32
native/gdi32
native/gl
contexts
texture_contexts
texture2d
render_context
'.each { |f| require "roglew/#{f}" }