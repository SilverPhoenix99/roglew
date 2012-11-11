#Raw Glue - the Ruby OpenGL and Extensions Wrapper

module Roglew
  VERSION = '0.2.0'
end

#external dependencies
%w'set
   ffi
   facets/module/module_load
   facets/string/camelcase
   facets/string/snakecase
   facets/platform
'.each { |f| require f }

#internal files
%w'ext/ffi_struct_ext
   contexts/base
   contexts/deferred
   contexts/immediate
   errors
   contextual
   gl_extension
   gl_object
   gl
   render_context
'.each { |f| require "roglew/#{f}" }

dir = case
        when Platform.local.windows? then 'windows'
        when Platform.local.linux?   then 'linux'
        else raise 'Unknown platform'
      end

require "roglew/platform/#{dir}"