#Raw Glue - the Ruby OpenGL and Extensions Wrapper

#external dependencies
%w'
  set
  ffi
  facets/module/module_load
  facets/string/camelcase
  facets/string/snakecase
  facets/platform
  method_decorators
'.each { |f| require f }

module Roglew
  VERSION = '0.3.0'.freeze
  VERSION_CODENAME = 'Caravaggio'.freeze

  PLATFORM = case
               when Platform.local.windows? then 'windows'
               when Platform.local.linux?   then 'linux'
               else raise 'Unknown platform'
             end
end

#internal files
%W'
  ext/ffi_struct_ext
  contexts/base
  contexts/deferred
  contexts/immediate
  errors
  contextual
  render_context_extension
  render_handle_extension
  platform/#{Roglew::PLATFORM}/gl
  render_handle
  gl
  platform/#{Roglew::PLATFORM}
  texture2d_context
  texture2d
  render_context
'.each { |f| require "roglew/#{f}" }