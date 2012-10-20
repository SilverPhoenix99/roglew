module Roglew
	module Kernel32
		extend ::FFI::Library
		ffi_lib 'kernel32'
		ffi_convention :stdcall

		attach_function :GetLastError, [], :uint
	end
end