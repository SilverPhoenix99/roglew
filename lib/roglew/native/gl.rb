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
	
    ERROR = {
      1280 => :INVALID_ENUM,
      1281 => :INVALID_VALUE,
      1282 => :INVALID_OPERATION,
      1283 => :STACK_OVERFLOW,
      1284 => :STACK_UNDERFLOW,
      1285 => :OUT_OF_MEMORY
    }.freeze
  end
end

require_relative 'gl/constants_old'
require_relative 'gl/functions'
require_relative 'gl/extensions'

require_relative 'wgl' #TODO platforms