module Roglew
  module WGL
    extend FFI::Library
    ffi_lib 'opengl32'
    ffi_convention :stdcall

    extend NativeObject

    class << self
      attr_reader :extensions
      attr_reader :functions
    end
  end
end

require_relative 'wgl/constants'
require_relative 'wgl/functions'
require_relative 'wgl/extensions'