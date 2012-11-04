module Roglew
  module GL
    module Native
      def self.included(m)
        m.instance_eval do
          extend FFI::Library
          ffi_lib 'opengl32'
          ffi_convention :stdcall
        end
      end
    end

    include Native
    extend NativeObject

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

require_relative 'wgl' #TODO platforms