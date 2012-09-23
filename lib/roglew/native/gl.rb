module Roglew
  module GL
    extend FFI::Library
    ffi_lib 'opengl32'
    ffi_convention :stdcall

    extend NativeObject

    class << self
      attr_reader :extensions
      attr_reader :functions
    end

    callback :GLDEBUGPROC,    [ :uint, :uint, :uint, :uint, :int, :string, :pointer ], :void
    callback :GLDEBUGPROCAMD, [ :uint, :uint, :uint, :int, :string, :pointer ], :void
    callback :GLDEBUGPROCARB, [ :uint, :uint, :uint, :uint, :int, :string, :pointer ], :void
  end
end

require_relative 'gl/constants'
require_relative 'gl/functions'
require_relative 'gl/extensions'

require_relative 'wgl' #TODO platforms