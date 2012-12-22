#Raw Glue - the Ruby OpenGL and Extensions Wrapper

#external dependencies
%w'set
   ffi
   facets/module/module_load
   facets/string/camelcase
   facets/string/snakecase
   facets/platform
'.each { |f| require f }

module Roglew
  VERSION = '0.2.3'

  PLATFORM = case
               when Platform.local.windows? then 'windows'
               when Platform.local.linux?   then 'linux'
               else raise 'Unknown platform'
             end
end

#internal files
%W'ext/ffi_struct_ext
   contexts/base
   contexts/deferred
   contexts/immediate
   errors
   contextual
   gl_extension
   gl_object
   platform/#{Roglew::PLATFORM}/gl
   gl
   platform/#{Roglew::PLATFORM}
   texture_context
   texture2d
   render_context
'.each { |f| require "roglew/#{f}" }